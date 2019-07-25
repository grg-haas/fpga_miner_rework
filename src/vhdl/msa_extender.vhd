-- args: --ieee=synopsys

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity msa_extender is
    port
    (
        clk      : in std_logic;
        reset    : in std_logic;

        data_val : in std_logic;
        data_in  : in std_logic_vector(31 downto 0);

        msa_out  :  out std_logic_vector(31 downto 0)
    );
end msa_extender;

architecture behavioral of msa_extender is
    signal res_buf : std_logic_vector(31 downto 0) := (others => '0');
    signal state   : natural range 0 to 3          := 0;

    signal s0    : std_logic_vector(31 downto 0) := (others => '0');
    signal s1    : std_logic_vector(31 downto 0) := (others => '0');

begin
    msa_out <= res_buf;

    s0 <= std_logic_vector(rotate_right(unsigned(data_in), 7))  xor
          std_logic_vector(rotate_right(unsigned(data_in), 18)) xor
          std_logic_vector(shift_right(unsigned(data_in), 3));

    s1 <= std_logic_vector(rotate_right(unsigned(data_in), 17)) xor
          std_logic_vector(rotate_right(unsigned(data_in), 19)) xor
          std_logic_vector(shift_right(unsigned(data_in), 10));


    extend : process(clk)
    begin
        if rising_edge(clk) then
            if data_val = '1' then
                case state is
                    when 0 => res_buf <= res_buf + s0;
                    when 1 => res_buf <= res_buf + s1;
                    when 2 => res_buf <= res_buf + data_in;
                    when 3 => res_buf <= res_buf + data_in;
                end case;

                if state /= 3 then
                    state <= state + 1;
                end if;

            elsif reset = '1' then
                res_buf <= (others => '0');
                state   <= 0;
            end if;
        end if;
    end process extend;

end behavioral;
