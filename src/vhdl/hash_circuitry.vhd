-- args: ieee=synopsys

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity hash_circuity is
    port
    (
        hash_a_val   : out std_logic_vector(31 downto 0);
        hash_b_val   : out std_logic_vector(31 downto 0);
        hash_c_val   : out std_logic_vector(31 downto 0);
        hash_d_val   : out std_logic_vector(31 downto 0);
        hash_e_val   : out std_logic_vector(31 downto 0);
        hash_f_val   : out std_logic_vector(31 downto 0);
        hash_g_val   : out std_logic_vector(31 downto 0);
        hash_h_val   : out std_logic_vector(31 downto 0);
        hash_msa_val : out std_logic_vector(31 downto 0);
        hash_rc_val  : out std_logic_vector(31 downto 0);

        hash_new_a   : in std_logic_vector(31 downto 0);
        hash_new_e   : in std_logic_vector(31 downto 0)
    );
end hash_circuity;

architecture behavioral of hash_circuity is
    signal S1    : std_logic_vector(31 downto 0) := (others => '0');
    signal ch    : std_logic_vector(31 downto 0) := (others => '0');
    signal temp1 : std_logic_vector(31 downto 0) := (others => '0');

    signal S0    : std_logic_vector(31 downto 0) := (others => '0');
    signal maj   : std_logic_vector(31 downto 0) := (others => '0');
    signal temp2 : std_logic_vector(31 downto 0) := (others => '0');

begin

    S1    <= std_logic_vector(rotate_right(unsigned(hash_e_val), 6))  xor
             std_logic_vector(rotate_right(unsigned(hash_e_val), 11)) xor
             std_logic_vector(rotate_right(unsigned(hash_e_val), 25));

    ch    <= (hash_e_val and hash_f_val) xor ((not hash_e_val) and hash_g_val);
    temp1 <= hash_h_val + S1 + ch + hash_rc_val + hash_msa_val;

    S0    <= std_logic_vector(rotate_right(unsigned(hash_a_val), 2))  xor
             std_logic_vector(rotate_right(unsigned(hash_a_val), 13)) xor
             std_logic_vector(rotate_right(unsigned(hash_a_val), 22));
    maj   <= (hash_a_val and hash_b_val) xor (hash_a_val and hash_c_val) xor
             (hash_b_val and hash_c_val);
    temp2 <= S0 + maj;

    hash_new_a <= temp1 + temp2;
    hash_new_e <= hash_d_val + temp1;

end behavioral;
