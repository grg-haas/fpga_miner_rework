library ieee;
use ieee.std_logic_1164.all;

use std.textio.all;

entity sim_clk is
    generic
    (
        PERIOD      : time := 10 ns;
        REPORT_TIME : time := 10 us
    );
    port(clk_out : out std_logic);
end sim_clk;

architecture behavioral of sim_clk is
    signal clk_sig : std_logic := '0';
begin
    clk_out <= clk_sig;

    pulse : process
    begin
        clk_sig <= not clk_sig;
        wait for PERIOD / 2;
    end process pulse;

    print_time : process
        variable time_count : time := 0 ms;
        variable l          : line;
    begin
        write(l, time_count, UNIT => ms);
        writeline(output, l);

        time_count := time_count + REPORT_TIME;
        wait for REPORT_TIME;
    end process;

end behavioral;
