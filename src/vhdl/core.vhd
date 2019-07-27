-- args: --ieee=synopsys -fexplicit

library ieee;
use ieee.std_logic_1164.all;

entity core is
    port
    (
        clk          : in std_logic;

        i_data       : in std_logic_vector(7 downto 0);
        i_stat       : in std_logic_vector(7 downto 0);

        o_data       : out std_logic_vector(7 downto 0);
        o_stat       : out std_logic_vector(7 downto 0);

        o_msa_i16    : out std_logic_vector(31 downto 0);
        o_msa_i15    : out std_logic_vector(31 downto 0);
        o_msa_i7     : out std_logic_vector(31 downto 0);
        o_msa_i2     : out std_logic_vector(31 downto 0);
        i_msa_new    : in std_logic_vector(31 downto 0);

        o_hash_a     : out std_logic_vector(31 downto 0);
        o_hash_b     : out std_logic_vector(31 downto 0);
        o_hash_c     : out std_logic_vector(31 downto 0);
        o_hash_d     : out std_logic_vector(31 downto 0);
        o_hash_e     : out std_logic_vector(31 downto 0);
        o_hash_f     : out std_logic_vector(31 downto 0);
        o_hash_g     : out std_logic_vector(31 downto 0);
        o_hash_h     : out std_logic_vector(31 downto 0);
        o_hash_msa   : out std_logic_vector(31 downto 0);
        o_hash_rc    : out std_logic_vector(31 downto 0);

        i_hash_new_a : in std_logic_vector(31 downto 0);
        i_hash_new_e : in std_logic_vector(31 downto 0)
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

    signal addr_buf        : std_logic_vector(7 downto 0) := (others => '0');
    signal data_buf        : std_logic_vector(31 downto 0) := (others => '0');
    signal parity_buf      : std_logic_vector(3 downto 0)  := (others => '0');

    -- status and data out buffers
    signal status_out_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal data_out_buf   : std_logic_vector(7 downto 0) := (others => '0');

    -- random other buffers
    signal buf_select   : std_logic_vector(3 downto 0)  := (others => '0');
    signal read_buf     : std_logic_vector(31 downto 0) := (others => '0');
    signal write_buf    : std_logic_vector(31 downto 0) := (others => '0');

    -- hashing buffers
    signal hash_a_buf   : std_logic_vector(31 downto 0) := x"6A09E667";
    signal hash_b_buf   : std_logic_vector(31 downto 0) := x"BB67AE85";
    signal hash_c_buf   : std_logic_vector(31 downto 0) := x"3C6EF372";
    signal hash_d_buf   : std_logic_vector(31 downto 0) := x"A54FF53A";
    signal hash_e_buf   : std_logic_vector(31 downto 0) := x"510E527F";
    signal hash_f_buf   : std_logic_vector(31 downto 0) := x"9B05688C";
    signal hash_g_buf   : std_logic_vector(31 downto 0) := x"1F83D9AB";
    signal hash_h_buf   : std_logic_vector(31 downto 0) := x"5BE0CD19";

    signal hash_rc_buf  : std_logic_vector(31 downto 0) := (others => '0');
    signal hash_msa_buf : std_logic_vector(31 downto 0) := (others => '0');

    -- msa buffers
    signal msa_i16_buf : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i15_buf : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i7_buf  : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i2_buf  : std_logic_vector(31 downto 0);

begin
    bram_addr_in <= "111" & addr_buf & "11111";
    bram_we      <= status_out_buf(3) & status_out_buf(3) &
                    status_out_buf(3) & status_out_buf(3);

    o_data <= data_out_buf;
    o_stat(7 downto 6) <= status_out_buf(7 downto 6);
    o_stat(5) <= interrupt_ack or status_out_buf(5);
    o_stat(4) <= interrupt_ack or status_out_buf(4);
    o_stat(3 downto 0) <= status_out_buf(3 downto 0);

    interrupt <= i_stat(5) or i_stat(4);

    o_hash_a   <= hash_a_buf;
    o_hash_b   <= hash_b_buf;
    o_hash_c   <= hash_c_buf;
    o_hash_d   <= hash_d_buf;
    o_hash_e   <= hash_e_buf;
    o_hash_f   <= hash_f_buf;
    o_hash_g   <= hash_g_buf;
    o_hash_h   <= hash_h_buf;
    o_hash_rc  <= hash_rc_buf;
    o_hash_msa <= hash_msa_buf;

    picoblaze : kcpsm6
        generic map
        (
            hwbuild                 => X"00",
            interrupt_vector        => X"3FF",
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

    synchronize : process(clk)
    begin
        if rising_edge(clk) then
            kcpsm6_sleep <= status_out_buf(7) and not i_stat(7);
        end if;
    end process synchronize;

    handle_msa_hash : process(clk)
    begin
        if rising_edge(clk) then
            if write_strobe = '1' or k_write_strobe = '1' then
                if port_id(2) = '1' then
                    case buf_select is
                        when "0001" => hash_a_buf <= write_buf;
                        when "0010" => hash_b_buf <= write_buf;
                        when "0011" => hash_c_buf <= write_buf;
                        when "0100" => hash_d_buf <= write_buf;
                        when "0101" => hash_e_buf <= write_buf;
                        when "0110" => hash_f_buf <= write_buf;
                        when "0111" => hash_g_buf <= write_buf;
                        when "1000" => hash_h_buf <= write_buf;
                        when others => NULL;
                    end case;
                end if;
            end if;

            if interrupt_ack = '1' and i_stat(5) = '1' then
                -- handled in output_ports
                -- msa result is automatically written to write_buf
            end if;

            if interrupt_ack = '1' and i_stat(5) = '1' then
                hash_h_buf <= hash_g_buf;
                hash_g_buf <= hash_f_buf;
                hash_f_buf <= hash_e_buf;
                hash_e_buf <= i_hash_new_e;
                hash_d_buf <= hash_c_buf;
                hash_c_buf <= hash_b_buf;
                hash_b_buf <= hash_a_buf;
                hash_a_buf <= i_hash_new_a;
            end if;
        end if;
    end process handle_msa_hash;

    read_buf <= bram_data_out when buf_select = "0000" else
                hash_a_buf    when buf_select = "0001" else
                hash_b_buf    when buf_select = "0010" else
                hash_c_buf    when buf_select = "0011" else
                hash_d_buf    when buf_select = "0100" else
                hash_e_buf    when buf_select = "0101" else
                hash_f_buf    when buf_select = "0110" else
                hash_g_buf    when buf_select = "0111" else
                hash_h_buf    when buf_select = "1000" else
                hash_rc_buf   when buf_select = "1001" else
                hash_msa_buf  when buf_select = "1010" else
                msa_i16_buf   when buf_select = "1011" else
                msa_i15_buf   when buf_select = "1100" else
                msa_i7_buf    when buf_select = "1101" else
                msa_i2_buf    when buf_select = "1110" else
                unaffected;

    data_buf     <= write_buf when buf_select = "0000" else unaffected;
    hash_rc_buf  <= write_buf when buf_select = "1001" else unaffected;
    hash_msa_buf <= write_buf when buf_select = "1010" else unaffected;
    msa_i16_buf  <= write_buf when buf_select = "1011" else unaffected;
    msa_i15_buf  <= write_buf when buf_select = "1100" else unaffected;
    msa_i7_buf   <= write_buf when buf_select = "1101" else unaffected;
    msa_i2_buf   <= write_buf when buf_select = "1110" else unaffected;

    input_ports : process(clk)
    begin
        if rising_edge(clk) then
            case port_id(2 downto 0) is
                when "000" => in_port <= i_data;
                when "001" => in_port <= i_stat;

                when "010" => in_port <= (others => '0'); --reserved

                when "011" => in_port <= "0000" & parity_buf;
                when "100" => in_port <= read_buf(7 downto 0);
                when "101" => in_port <= read_buf(15 downto 8);
                when "110" => in_port <= read_buf(23 downto 16);
                when "111" => in_port <= read_buf(31 downto 24);

                when others => in_port <= (others => '0');
            end case;
        end if;
    end process input_ports;

    output_ports : process(clk)
    begin
        if rising_edge(clk) then
            -- reset various commands that don't need to go out
            status_out_buf(5 downto 0) <= (others => '0');

            if buf_select = "1111" then
                write_buf <= read_buf;
            end if;

            if interrupt_ack = '1' and i_stat(5) = '1' then
                write_buf <= i_msa_new;
            end if;

            if write_strobe = '1' or k_write_strobe = '1' then
                case port_id(2 downto 0) is
                    when "000" => data_out_buf <= out_port;
                    when "001" =>
                        status_out_buf <= out_port;

                        if out_port(2) = '1' then
                            addr_buf   <= (others => '0');
                            write_buf  <= (others => '0');
                            parity_buf <= (others => '0');
                        end if;

                    when "010" => addr_buf <= out_port;
                    when "011" =>
                        parity_buf <= out_port(3 downto 0);
                        buf_select <= out_port(7 downto 4);

                    when "100" => write_buf(7 downto 0)   <= out_port;
                    when "101" => write_buf(15 downto 8)  <= out_port;
                    when "110" => write_buf(23 downto 16) <= out_port;
                    when "111" => write_buf(31 downto 24) <= out_port;
                    when others => NULL;
                end case;
            end if;
        end if;
    end process output_ports;
end behavioral;
