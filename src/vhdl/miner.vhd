library ieee;
use ieee.std_logic_1164.all;

entity miner is
    port
    (
        clk         : in std_logic;

        uart_tx_pin : out std_logic;
        uart_rx_pin : in std_logic
    );
end miner;

architecture behavioral of miner is
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

    component main_prog is
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
    end component main_prog;

    component uart_rx6 is
        port
        (
            serial_in           : in std_logic;
            en_16_x_baud        : in std_logic;
            data_out            : out std_logic_vector(7 downto 0);
            buffer_read         : in std_logic;
            buffer_data_present : out std_logic;
            buffer_half_full    : out std_logic;
            buffer_full         : out std_logic;
            buffer_reset        : in std_logic;
            clk                 : in std_logic
        );
    end component uart_rx6;

    component uart_tx6 is
        port
        (
            data_in             : in std_logic_vector(7 downto 0);
            en_16_x_baud        : in std_logic;
            serial_out          : out std_logic;
            buffer_write        : in std_logic;
            buffer_data_present : out std_logic;
            buffer_half_full    : out std_logic;
            buffer_full         : out std_logic;
            buffer_reset        : in std_logic;
            clk                 : in std_logic
        );
    end component uart_tx6;

    component core_msa_wrapper is
        port
        (
            clk        : in std_logic;

            wrk1_i_data  : in std_logic_vector(7 downto 0);
            wrk1_i_stat  : in std_logic_vector(5 downto 0);
            wrk1_o_data  : out std_logic_vector(7 downto 0);
            wrk1_o_stat  : out std_logic_vector(7 downto 0);

            wrk2_i_data  : in std_logic_vector(7 downto 0);
            wrk2_i_stat  : in std_logic_vector(5 downto 0);
            wrk2_o_data  : out std_logic_vector(7 downto 0);
            wrk2_o_stat  : out std_logic_vector(7 downto 0);

            wrk3_i_data  : in std_logic_vector(7 downto 0);
            wrk3_i_stat  : in std_logic_vector(5 downto 0);
            wrk3_o_data  : out std_logic_vector(7 downto 0);
            wrk3_o_stat  : out std_logic_vector(7 downto 0);

            wrk4_i_data  : in std_logic_vector(7 downto 0);
            wrk4_i_stat  : in std_logic_vector(5 downto 0);
            wrk4_o_data  : out std_logic_vector(7 downto 0);
            wrk4_o_stat  : out std_logic_vector(7 downto 0);

            wrk5_i_data  : in std_logic_vector(7 downto 0);
            wrk5_i_stat  : in std_logic_vector(5 downto 0);
            wrk5_o_data  : out std_logic_vector(7 downto 0);
            wrk5_o_stat  : out std_logic_vector(7 downto 0);

            wrk6_i_data  : in std_logic_vector(7 downto 0);
            wrk6_i_stat  : in std_logic_vector(5 downto 0);
            wrk6_o_data  : out std_logic_vector(7 downto 0);
            wrk6_o_stat  : out std_logic_vector(7 downto 0);

            wrk7_i_data  : in std_logic_vector(7 downto 0);
            wrk7_i_stat  : in std_logic_vector(5 downto 0);
            wrk7_o_data  : out std_logic_vector(7 downto 0);
            wrk7_o_stat  : out std_logic_vector(7 downto 0);

            wrk8_i_data  : in std_logic_vector(7 downto 0);
            wrk8_i_stat  : in std_logic_vector(5 downto 0);
            wrk8_o_data  : out std_logic_vector(7 downto 0);
            wrk8_o_stat  : out std_logic_vector(7 downto 0);

            wrk9_i_data  : in std_logic_vector(7 downto 0);
            wrk9_i_stat  : in std_logic_vector(5 downto 0);
            wrk9_o_data  : out std_logic_vector(7 downto 0);
            wrk9_o_stat  : out std_logic_vector(7 downto 0);

            wrk10_i_data  : in std_logic_vector(7 downto 0);
            wrk10_i_stat  : in std_logic_vector(5 downto 0);
            wrk10_o_data  : out std_logic_vector(7 downto 0);
            wrk10_o_stat  : out std_logic_vector(7 downto 0);

            wrk11_i_data  : in std_logic_vector(7 downto 0);
            wrk11_i_stat  : in std_logic_vector(5 downto 0);
            wrk11_o_data  : out std_logic_vector(7 downto 0);
            wrk11_o_stat  : out std_logic_vector(7 downto 0);

            wrk12_i_data  : in std_logic_vector(7 downto 0);
            wrk12_i_stat  : in std_logic_vector(5 downto 0);
            wrk12_o_data  : out std_logic_vector(7 downto 0);
            wrk12_o_stat  : out std_logic_vector(7 downto 0);

            wrk13_i_data  : in std_logic_vector(7 downto 0);
            wrk13_i_stat  : in std_logic_vector(5 downto 0);
            wrk13_o_data  : out std_logic_vector(7 downto 0);
            wrk13_o_stat  : out std_logic_vector(7 downto 0);

            wrk14_i_data  : in std_logic_vector(7 downto 0);
            wrk14_i_stat  : in std_logic_vector(5 downto 0);
            wrk14_o_data  : out std_logic_vector(7 downto 0);
            wrk14_o_stat  : out std_logic_vector(7 downto 0);

            wrk15_i_data  : in std_logic_vector(7 downto 0);
            wrk15_i_stat  : in std_logic_vector(5 downto 0);
            wrk15_o_data  : out std_logic_vector(7 downto 0);
            wrk15_o_stat  : out std_logic_vector(7 downto 0);

            wrk16_i_data  : in std_logic_vector(7 downto 0);
            wrk16_i_stat  : in std_logic_vector(5 downto 0);
            wrk16_o_data  : out std_logic_vector(7 downto 0);
            wrk16_o_stat  : out std_logic_vector(7 downto 0)
        );
    end component;

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

    -- signals for the UART
    signal baud_count        : integer range 0 to 53        := 0;
    signal uart_baud         : std_logic                    := '0';

    -- | uart_tx6                                             | uart_rx6
    -- [buffer_data_present] [buffer_half_full] [buffer_full] [buffer_data_present] [buffer_half_full] [buffer_full]
    signal uart_status       : std_logic_vector(5 downto 0) := (others => '0');
    signal uart_data_in      : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_data_out     : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_buffer_write : std_logic                    := '0';
    signal uart_buffer_read  : std_logic                    := '0';
    signal uart_reset        : std_logic                    := '0';

    -- signals for the memory !!UNUSED but tied to 0
    signal bram_we         : std_logic_vector(3 downto 0)  := (others => '0');
    signal bram_addr_in    : std_logic_vector(15 downto 0) := (others => '0');
    signal bram_data_out   : std_logic_vector(31 downto 0) := (others => '0');
    signal bram_parity_out : std_logic_vector(3 downto 0)  := (others => '0');

    signal addr_buf        : std_logic_vector(15 downto 0) := (others => '0');
    signal data_buf        : std_logic_vector(31 downto 0) := (others => '0');
    signal parity_buf      : std_logic_vector(3 downto 0)  := (others => '0');

    -- signals for managing the workers
    signal worker_select : std_logic_vector(7 downto 0) := (others => '0');

    signal self_i_data   : std_logic_vector(7 downto 0) := (others => '0');
    signal self_o_data   : std_logic_vector(7 downto 0) := (others => '0');
    signal self_i_stat   : std_logic_vector(7 downto 0) := (others => '0');
    signal self_o_stat   : std_logic_vector(5 downto 0) := (others => '0');

    -- signals for the workers
    signal worker1_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker1_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker1_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker1_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker2_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker2_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker2_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker2_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker3_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker3_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker3_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker3_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker4_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker4_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker4_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker4_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker5_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker5_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker5_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker5_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker6_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker6_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker6_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker6_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker7_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker7_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker7_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker7_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker8_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker8_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker8_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker8_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker9_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker9_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker9_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker9_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker10_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker10_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker10_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker10_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker11_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker11_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker11_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker11_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker12_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker12_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker12_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker12_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker13_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker13_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker13_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker13_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker14_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker14_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker14_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker14_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker15_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker15_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker15_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker15_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker16_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker16_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker16_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker16_o_stat : std_logic_vector(7 downto 0) := (others => '0');

begin
    bram_we      <= (others => '0');
    bram_addr_in <= (others => '0');
    addr_buf     <= (others => '0');
    data_buf     <= (others => '0');
    parity_buf   <= (others => '0');

    interrupt    <= interrupt_ack;

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

    program : main_prog
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
            enable_b     => '0',
            we_b         => bram_we
        );

    uart_tx : uart_tx6
        port map
        (
            data_in             => uart_data_in,
            en_16_x_baud        => uart_baud,
            serial_out          => uart_tx_pin,
            buffer_write        => uart_buffer_write,
            buffer_data_present => uart_status(5),
            buffer_half_full    => uart_status(4),
            buffer_full         => uart_status(3),
            buffer_reset        => uart_reset,
            clk                 => clk
        );

    uart_rx : uart_rx6
        port map
        (
            serial_in           => uart_rx_pin,
            en_16_x_baud        => uart_baud,
            data_out            => uart_data_out,
            buffer_read         => uart_buffer_read,
            buffer_data_present => uart_status(2),
            buffer_half_full    => uart_status(1),
            buffer_full         => uart_status(0),
            buffer_reset        => uart_reset,
            clk                 => clk
        );

    worker1_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000001" else
                       (others => '0');
    worker2_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000010" else
                       (others => '0');
    worker3_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000011" else
                       (others => '0');
    worker4_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000100" else
                       (others => '0');
    worker5_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000101" else
                       (others => '0');
    worker6_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000110" else
                       (others => '0');
    worker7_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00000111" else
                       (others => '0');
    worker8_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00001000" else
                       (others => '0');
    worker9_i_data <= self_o_data when worker_select = "00000000" or
                                       worker_select = "00001001" else
                      (others => '0');
    worker10_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001010" else
                       (others => '0');
    worker11_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001011" else
                       (others => '0');
    worker12_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001100" else
                       (others => '0');
    worker13_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001101" else
                       (others => '0');
    worker14_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001110" else
                       (others => '0');
    worker15_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00001111" else
                       (others => '0');
    worker16_i_data <= self_o_data when worker_select = "00000000" or
                                        worker_select = "00010000" else
                       (others => '0');

    worker1_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000001" else
                       (others => '0');
    worker2_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000010" else
                       (others => '0');
    worker3_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000011" else
                       (others => '0');
    worker4_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000100" else
                       (others => '0');
    worker5_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000101" else
                       (others => '0');
    worker6_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000110" else
                       (others => '0');
    worker7_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00000111" else
                       (others => '0');
    worker8_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00001000" else
                       (others => '0');
    worker9_i_stat <= self_o_stat when worker_select = "00000000" or
                                       worker_select = "00001001" else
                      (others => '0');
    worker10_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001010" else
                       (others => '0');
    worker11_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001011" else
                       (others => '0');
    worker12_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001100" else
                       (others => '0');
    worker13_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001101" else
                       (others => '0');
    worker14_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001110" else
                       (others => '0');
    worker15_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00001111" else
                       (others => '0');
    worker16_i_stat <= self_o_stat when worker_select = "00000000" or
                                        worker_select = "00010000" else
                       (others => '0');

    cmw : core_msa_wrapper
        port map
        (
            clk => clk,

            wrk1_i_data => worker1_i_data,
            wrk1_i_stat => worker1_i_stat,
            wrk1_o_data => worker1_o_data,
            wrk1_o_stat => worker1_o_stat,

            wrk2_i_data => worker2_i_data,
            wrk2_i_stat => worker2_i_stat,
            wrk2_o_data => worker2_o_data,
            wrk2_o_stat => worker2_o_stat,

            wrk3_i_data => worker3_i_data,
            wrk3_i_stat => worker3_i_stat,
            wrk3_o_data => worker3_o_data,
            wrk3_o_stat => worker3_o_stat,

            wrk4_i_data => worker4_i_data,
            wrk4_i_stat => worker4_i_stat,
            wrk4_o_data => worker4_o_data,
            wrk4_o_stat => worker4_o_stat,

            wrk5_i_data => worker5_i_data,
            wrk5_i_stat => worker5_i_stat,
            wrk5_o_data => worker5_o_data,
            wrk5_o_stat => worker5_o_stat,

            wrk6_i_data => worker6_i_data,
            wrk6_i_stat => worker6_i_stat,
            wrk6_o_data => worker6_o_data,
            wrk6_o_stat => worker6_o_stat,

            wrk7_i_data => worker7_i_data,
            wrk7_i_stat => worker7_i_stat,
            wrk7_o_data => worker7_o_data,
            wrk7_o_stat => worker7_o_stat,

            wrk8_i_data => worker8_i_data,
            wrk8_i_stat => worker8_i_stat,
            wrk8_o_data => worker8_o_data,
            wrk8_o_stat => worker8_o_stat,

            wrk9_i_data => worker9_i_data,
            wrk9_i_stat => worker9_i_stat,
            wrk9_o_data => worker9_o_data,
            wrk9_o_stat => worker9_o_stat,

            wrk10_i_data => worker10_i_data,
            wrk10_i_stat => worker10_i_stat,
            wrk10_o_data => worker10_o_data,
            wrk10_o_stat => worker10_o_stat,

            wrk11_i_data => worker11_i_data,
            wrk11_i_stat => worker11_i_stat,
            wrk11_o_data => worker11_o_data,
            wrk11_o_stat => worker11_o_stat,

            wrk12_i_data => worker12_i_data,
            wrk12_i_stat => worker12_i_stat,
            wrk12_o_data => worker12_o_data,
            wrk12_o_stat => worker12_o_stat,

            wrk13_i_data => worker13_i_data,
            wrk13_i_stat => worker13_i_stat,
            wrk13_o_data => worker13_o_data,
            wrk13_o_stat => worker13_o_stat,

            wrk14_i_data => worker14_i_data,
            wrk14_i_stat => worker14_i_stat,
            wrk14_o_data => worker14_o_data,
            wrk14_o_stat => worker14_o_stat,

            wrk15_i_data => worker15_i_data,
            wrk15_i_stat => worker15_i_stat,
            wrk15_o_data => worker15_o_data,
            wrk15_o_stat => worker15_o_stat,

            wrk16_i_data => worker16_i_data,
            wrk16_i_stat => worker16_i_stat,
            wrk16_o_data => worker16_o_data,
            wrk16_o_stat => worker16_o_stat
        );

    self_i_data <= worker1_o_data when worker_select = "00000001" else
                   worker2_o_data when worker_select = "00000010" else
                   worker3_o_data when worker_select = "00000011" else
                   worker4_o_data when worker_select = "00000100" else
                   worker5_o_data when worker_select = "00000101" else
                   worker6_o_data when worker_select = "00000110" else
                   worker7_o_data when worker_select = "00000111" else
                   worker8_o_data when worker_select = "00001000" else
                   worker9_o_data when worker_select = "00001001" else
                   worker10_o_data when worker_select = "00001010" else
                   worker11_o_data when worker_select = "00001011" else
                   worker12_o_data when worker_select = "00001100" else
                   worker13_o_data when worker_select = "00001101" else
                   worker14_o_data when worker_select = "00001110" else
                   worker15_o_data when worker_select = "00001111" else
                   worker16_o_data when worker_select = "00010000" else
                   (others => '0');

    -- todo: implement multicast sleeping here
    self_i_stat <= worker1_o_stat when worker_select = "00000001" else
                   worker2_o_stat when worker_select = "00000010" else
                   worker3_o_stat when worker_select = "00000011" else
                   worker4_o_stat when worker_select = "00000100" else
                   worker5_o_stat when worker_select = "00000101" else
                   worker6_o_stat when worker_select = "00000110" else
                   worker7_o_stat when worker_select = "00000111" else
                   worker8_o_stat when worker_select = "00001000" else
                   worker9_o_stat when worker_select = "00001001" else
                   worker10_o_stat when worker_select = "00001010" else
                   worker11_o_stat when worker_select = "00001011" else
                   worker12_o_stat when worker_select = "00001100" else
                   worker13_o_stat when worker_select = "00001101" else
                   worker14_o_stat when worker_select = "00001110" else
                   worker15_o_stat when worker_select = "00001111" else
                   worker16_o_stat when worker_select = "00010000" else
                   (others => '0');

    baud_rate : process(clk)
    begin
        if rising_edge(clk) then
            if baud_count = 53 then
                baud_count <= 0;
                uart_baud  <= '1';
            else
                baud_count <= baud_count + 1;
                uart_baud  <= '0';
            end if;
        end if;
    end process baud_rate;

    synchronize : process(clk)
    begin
        if rising_edge(clk) then
            kcpsm6_sleep <= self_o_stat(5) and not self_i_stat(5);
        end if;
    end process synchronize;

    uart_buffer_read <= read_strobe when port_id(1 downto 0) = "00" else '0';

    input_ports : process(clk)
    begin
        if rising_edge(clk) then
            case port_id(1 downto 0) is
                when "00" => in_port <= uart_data_out;
                when "01" => in_port <= "00" & uart_status;

                when "10" => in_port <= self_i_data;
                when "11" => in_port <= self_i_stat;

                when others => in_port <= (others => '0');
            end case;
        end if;
    end process input_ports;

    output_ports : process(clk)
    begin
        if rising_edge(clk) then
            uart_buffer_write <= '0';

            if write_strobe = '1' or k_write_strobe = '1' then
                case port_id(1 downto 0) is
                    when "00" =>
                        uart_buffer_write  <= '1';
                        uart_data_in       <= out_port;

                    when "01" => worker_select <= out_port;
                    when "10" => self_o_data   <= out_port;
                    when "11" => self_o_stat   <= out_port(7 downto 6) & out_port(3 downto 0);

                    when others => NULL;
                end case;
            end if;

        end if;
    end process output_ports;

end behavioral;
