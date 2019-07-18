library ieee;
use ieee.std_logic_1164.all;

entity core is
    port
    (
        clk        : in std_logic;

        data_in    : in std_logic_vector(7 downto 0);
        data_out   : out std_logic_vector(7 downto 0);

        status_in  : in std_logic_vector(7 downto 0);
        status_out : out std_logic_vector(7 downto 0)
    );
end core;

architecture behavioral of core is
    component kcpsm6 is
        generic
        (
            hwbuild                 : std_logic_vector(7 downto 0) := X"00";
            interrupt_vector        : std_logic_vector(11 downto 0) := X"3FF";
            scratch_pad_memory_size : integer := 64
        );
        port
        (
            address        : out std_logic_vector(11 downto 0);
            instruction    : in std_logic_vector(17 downto 0);
            bram_enable    : out std_logic;
            in_port        : in std_logic_vector(7 downto 0);
            out_port       : out std_logic_vector(7 downto 0);
            port_id        : out std_logic_vector(7 downto 0);
            write_strobe   : out std_logic;
            k_write_strobe : out std_logic;
            read_strobe    : out std_logic;
            interrupt      : in std_logic;
            interrupt_ack  : out std_logic;
            sleep          : in std_logic;
            reset          : in std_logic;
            clk            : in std_logic
        );
    end component kcpsm6;

    component core_prog is
        generic
        (
            C_FAMILY          : string  := "S6";
            C_RAM_SIZE_KWORDS : integer := 1
        );

        port
        (
            address      : in std_logic_vector(11 downto 0);
            instruction  : out std_logic_vector(17 downto 0);
            enable       : in std_logic;
            clk          : in std_logic;

            address_b    : in std_logic_vector(15 downto 0);
            data_in_b    : in std_logic_vector(31 downto 0);
            parity_in_b  : in std_logic_vector(3 downto 0);
            data_out_b   : out std_logic_vector(31 downto 0);
            parity_out_b : out std_logic_vector(3 downto 0);
            enable_b     : in std_logic;
            we_b         : in std_logic_vector(3 downto 0)
        );
    end component core_prog;

    -- signals for the processor
    signal address        : std_logic_vector(11 downto 0) := (others => '0');
    signal instruction    : std_logic_vector(17 downto 0) := (others => '0');
    signal bram_enable    : std_logic                     := '0';
    signal in_port        : std_logic_vector(7 downto 0)  := (others => '0');
    signal out_port       : std_logic_vector(7 downto 0)  := (others => '0');
    signal port_id        : std_logic_vector(7 downto 0)  := (others => '0');
    signal write_strobe   : std_logic                     := '0';
    signal k_write_strobe : std_logic                     := '0';
    signal read_strobe    : std_logic                     := '0';
    signal interrupt      : std_logic                     := '0';
    signal interrupt_ack  : std_logic                     := '0';
    signal kcpsm6_sleep   : std_logic                     := '0';
    signal kcpsm6_reset   : std_logic                     := '0';

    -- signals for the memory
    signal bram_we         : std_logic_vector(3 downto 0)  := (others => '0');
    signal bram_addr_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal bram_data_out   : std_logic_vector(31 downto 0) := (others => '0');
    signal bram_parity_out : std_logic_vector(3 downto 0)  := (others => '0');

    signal addr_buf        : std_logic_vector(15 downto 0) := (others => '0');
    signal data_buf        : std_logic_vector(31 downto 0) := (others => '0');
    signal parity_buf      : std_logic_vector(3 downto 0)  := (others => '0');

    -- status and data out buffers

    signal status_out_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal data_out_buf   : std_logic_vector(7 downto 0) := (others => '0');

begin
    bram_addr_in <= '1' & addr_buf(10 downto 0) & "1111";
    bram_we      <= status_out_buf(6) & status_out_buf(6) &
                    status_out_buf(6) & status_out_buf(6);

    interrupt    <= interrupt_ack;
    kcpsm6_sleep <= status_out_buf(7) and not status_in(7);

    data_out   <= data_out_buf;
    status_out <= status_out_buf;

    picoblaze : kcpsm6
        generic map
        (
            hwbuild                 => X"00",
            interrupt_vector        => X"7D1",
            scratch_pad_memory_size => 64
        )

        port map
        (
            address        => address,
            instruction    => instruction,
            bram_enable    => bram_enable,
            port_id        => port_id,
            write_strobe   => write_strobe,
            k_write_strobe => k_write_strobe,
            out_port       => out_port,
            read_strobe    => read_strobe,
            in_port        => in_port,
            interrupt      => interrupt,
            interrupt_ack  => interrupt_ack,
            sleep          => kcpsm6_sleep,
            reset          => kcpsm6_reset,
            clk            => clk
        );

    program : core_prog
        generic map
        (
            C_FAMILY             => "7S",
            C_RAM_SIZE_KWORDS    => 2
        )

        port map
        (
            address     => address,
            instruction => instruction,
            enable      => bram_enable,
            clk         => clk,

            address_b    => bram_addr_in,
            data_in_b    => data_buf,
            parity_in_b  => parity_buf,
            data_out_b   => bram_data_out,
            parity_out_b => bram_parity_out,
            enable_b     => '1',
            we_b         => bram_we
        );

    input_ports : process(clk)
    begin
        if rising_edge(clk) then
            case port_id(2 downto 0) is
                when "000" => in_port <= data_in;
                when "001" => in_port <= status_in;

                when "010" => in_port <= (others => '0'); --reserved

                when "011" => in_port <= "0000" & parity_buf;
                when "100" => in_port <= data_buf(7 downto 0);
                when "101" => in_port <= data_buf(15 downto 8);
                when "110" => in_port <= data_buf(23 downto 16);
                when "111" => in_port <= data_buf(31 downto 24);

                when others => in_port <= (others => '0');
            end case;
        end if;
    end process input_ports;

    output_ports : process(clk)
    begin
        if rising_edge(clk) then

            if write_strobe = '1' or k_write_strobe = '1' then
                case port_id(2 downto 0) is
                    when "000" => data_out_buf <= out_port;
                    when "001" => -- not great but it works!
                        if out_port(7 downto 4) = "0000" then
                            parity_buf <= out_port(3 downto 0);
                        else
                            status_out_buf <= out_port;

                            if out_port(5) = '1' then
                                addr_buf   <= (others => '0');
                                data_buf   <= (others => '0');
                                parity_buf <= (others => '0');
                            end if;
                        end if;

                    when "010" => addr_buf(7 downto 0)  <= out_port;
                    when "011" => addr_buf(15 downto 8) <= out_port;

                    when "100" => data_buf(7 downto 0) <= out_port;
                    when "101" => data_buf(15 downto 8) <= out_port;
                    when "110" => data_buf(23 downto 16) <= out_port;
                    when "111" => data_buf(31 downto 24) <= out_port;

                    when others => NULL;
                end case;
            end if;
        end if;
    end process output_ports;
end behavioral;
