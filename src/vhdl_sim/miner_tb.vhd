library ieee;
use ieee.std_logic_1164.all;

use std.textio.all;

entity miner_tb is
end miner_tb;

architecture behavioral of miner_tb is
    component sim_clk is
        generic(PERIOD : time := 10 ns);
        port(clk_out : out std_logic);
    end component;

    component miner is
        port
        (
            clk         : in std_logic;

            uart_tx_pin : out std_logic;
            uart_rx_pin : in std_logic
        );
    end component;

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

    -- signals for the clock
    signal clk               : std_logic := '0';

    -- signals for the UART
    signal baud_count        : integer range 0 to 53        := 0;
    signal uart_baud         : std_logic                    := '0';

    -- | uart_tx6                                             | uart_rx6
    -- [buffer_data_present] [buffer_half_full] [buffer_full] [buffer_data_present] [buffer_half_full] [buffer_full]
    signal uart_status       : std_logic_vector(5 downto 0) := (others => '0');
    signal uart_data_in      : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_data_out     : std_logic_vector(7 downto 0) := (others => '0');
    signal uart_buffer_write : std_logic                    := '0';
    signal uart_buffer_read  : std_logic                    := '1';
    signal uart_reset        : std_logic                    := '0';

    signal uart_tx_pin       : std_logic                    := '0';
    signal uart_rx_pin       : std_logic                    := '0';

begin
    sim_clk_gen : sim_clk
        port map (clk_out => clk);

    uart_tx: uart_tx6
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

    uart_rx: uart_rx6
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

    UUT : miner
        port map
        (
            clk => clk,

            uart_tx_pin => uart_rx_pin,
            uart_rx_pin => uart_tx_pin
        );

    baud_rate: process(clk)
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

    simulate : process
    begin
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"01";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"02";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"03";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"04";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"05";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"06";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"07";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"08";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"09";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');

        wait until uart_status(5) = '0';
        wait until rising_edge(clk);

        uart_buffer_write <= '1';
        uart_data_in      <= x"0A";

        wait until rising_edge(clk);

        uart_buffer_write <= '0';
        uart_data_in      <= (others => '0');
        wait for 2000 ms;
    end process simulate;

end behavioral;
