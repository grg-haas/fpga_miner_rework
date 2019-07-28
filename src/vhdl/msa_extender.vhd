-- args: --ieee=synopsys

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity msa_extender is
    port
    (
        clk     : in std_logic;

        msa_i16 : in std_logic_vector(31 downto 0);
        msa_i15 : in std_logic_vector(31 downto 0);
        msa_i7  : in std_logic_vector(31 downto 0);
        msa_i2  : in std_logic_vector(31 downto 0);

        msa_out  :  out std_logic_vector(31 downto 0)
    );
end msa_extender;

architecture behavioral of msa_extender is

    signal s0    : std_logic_vector(31 downto 0) := (others => '0');
    signal s1    : std_logic_vector(31 downto 0) := (others => '0');

begin
    compute : process(clk) is
    begin
        if rising_edge(clk) then
            s0 <= std_logic_vector(rotate_right(unsigned(msa_i15), 7))  xor
                  std_logic_vector(rotate_right(unsigned(msa_i15), 18)) xor
                  std_logic_vector(shift_right(unsigned(msa_i15), 3));

            s1 <= std_logic_vector(rotate_right(unsigned(msa_i2), 17)) xor
                  std_logic_vector(rotate_right(unsigned(msa_i2), 19)) xor
                  std_logic_vector(shift_right(unsigned(msa_i2), 10));
        end if;
    end process compute;

    msa_out <= msa_i16 + s0 + msa_i7 + s1;

end behavioral;
