library ieee;
use ieee.std_logic_1164.all;

entity sim_clk is
    generic(PERIOD : time := 10 ns);
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

end behavioral;
