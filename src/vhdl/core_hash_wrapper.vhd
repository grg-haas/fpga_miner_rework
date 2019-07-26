library ieee;
use ieee.std_logic_1164.all;

entity core_hash_wrapper is
    port
    (
        clk          : in std_logic;

        worker_sel   : in std_logic_vector(4 downto 0);

        data_in      : in std_logic_vector(7 downto 0);
        status_in    : in std_logic_vector(7 downto 0);

        data_out     : out std_logic_vector(7 downto 0);
        status_out   : out std_logic_vector(7 downto 0);

        msa_val_i_16 : out std_logic_vector(31 downto 0);
        msa_val_i_15 : out std_logic_vector(31 downto 0);
        msa_val_i_7  : out std_logic_vector(31 downto 0);
        msa_val_i_2  : out std_logic_vector(31 downto 0);
        msa_val_new  : in std_logic_vector(31 downto 0)
    );
end core_hash_wrapper;

architecture behavioral of core_hash_wrapper is
    component core is
        port
        (
            clk          : in std_logic;

            data_in      : in std_logic_vector(7 downto 0);
            status_in    : in std_logic_vector(7 downto 0);

            data_out     : out std_logic_vector(7 downto 0);
            status_out   : out std_logic_vector(7 downto 0);

            msa_val_i_16 : out std_logic_vector(31 downto 0);
            msa_val_i_15 : out std_logic_vector(31 downto 0);
            msa_val_i_7  : out std_logic_vector(31 downto 0);
            msa_val_i_2  : out std_logic_vector(31 downto 0);
            msa_val_new  : in std_logic_vector(31 downto 0);

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
    end component core;

    component hash_circuity is
        port
        (
            clk : in std_logic;

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
    end component;

    -- signals for the hashing circuitry
    signal hasher_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_rc_in  : std_logic_vector(31 downto 0) := (others => '0');

    signal hasher_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal hasher_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    -- signals for the workers
    signal worker1_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker2_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker3_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker4_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker5_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker6_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker7_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker8_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_new_e  : std_logic_vector(31 downto 0) := (others => '0');
begin

    hasher_crct : hash_circuity
        port map
        (
            clk => clk,

            hash_a_val => hasher_a_in,
            hash_b_val => hasher_b_in,
            hash_c_val => hasher_c_in,
            hash_d_val => hasher_d_in,
            hash_e_val => hasher_e_in,
            hash_f_val => hasher_f_in,
            hash_g_val => hasher_g_in,
            hash_h_val => hasher_h_in,

            hash_new_a => hasher_new_a,
            hash_new_e => hasher_new_e
        );

end behavioral;
