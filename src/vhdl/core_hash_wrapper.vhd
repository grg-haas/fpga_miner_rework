library ieee;
use ieee.std_logic_1164.all;

entity core_hash_wrapper is
    port
    (
        clk          : in std_logic;

        wrk1_i_data  : in std_logic_vector(7 downto 0);
        wrk1_i_stat  : in std_logic_vector(6 downto 0);
        wrk1_o_data  : out std_logic_vector(7 downto 0);
        wrk1_o_stat  : out std_logic_vector(7 downto 0);
        wrk1_msa_i16 : out std_logic_vector(31 downto 0);
        wrk1_msa_i15 : out std_logic_vector(31 downto 0);
        wrk1_msa_i7  : out std_logic_vector(31 downto 0);
        wrk1_msa_i2  : out std_logic_vector(31 downto 0);
        wrk1_msa_new : in std_logic_vector(31 downto 0);

        wrk2_i_data  : in std_logic_vector(7 downto 0);
        wrk2_i_stat  : in std_logic_vector(6 downto 0);
        wrk2_o_data  : out std_logic_vector(7 downto 0);
        wrk2_o_stat  : out std_logic_vector(7 downto 0);
        wrk2_msa_i16 : out std_logic_vector(31 downto 0);
        wrk2_msa_i15 : out std_logic_vector(31 downto 0);
        wrk2_msa_i7  : out std_logic_vector(31 downto 0);
        wrk2_msa_i2  : out std_logic_vector(31 downto 0);
        wrk2_msa_new : in std_logic_vector(31 downto 0);

        wrk3_i_data  : in std_logic_vector(7 downto 0);
        wrk3_i_stat  : in std_logic_vector(6 downto 0);
        wrk3_o_data  : out std_logic_vector(7 downto 0);
        wrk3_o_stat  : out std_logic_vector(7 downto 0);
        wrk3_msa_i16 : out std_logic_vector(31 downto 0);
        wrk3_msa_i15 : out std_logic_vector(31 downto 0);
        wrk3_msa_i7  : out std_logic_vector(31 downto 0);
        wrk3_msa_i2  : out std_logic_vector(31 downto 0);
        wrk3_msa_new : in std_logic_vector(31 downto 0);

        wrk4_i_data  : in std_logic_vector(7 downto 0);
        wrk4_i_stat  : in std_logic_vector(6 downto 0);
        wrk4_o_data  : out std_logic_vector(7 downto 0);
        wrk4_o_stat  : out std_logic_vector(7 downto 0);
        wrk4_msa_i16 : out std_logic_vector(31 downto 0);
        wrk4_msa_i15 : out std_logic_vector(31 downto 0);
        wrk4_msa_i7  : out std_logic_vector(31 downto 0);
        wrk4_msa_i2  : out std_logic_vector(31 downto 0);
        wrk4_msa_new : in std_logic_vector(31 downto 0);

        wrk5_i_data  : in std_logic_vector(7 downto 0);
        wrk5_i_stat  : in std_logic_vector(6 downto 0);
        wrk5_o_data  : out std_logic_vector(7 downto 0);
        wrk5_o_stat  : out std_logic_vector(7 downto 0);
        wrk5_msa_i16 : out std_logic_vector(31 downto 0);
        wrk5_msa_i15 : out std_logic_vector(31 downto 0);
        wrk5_msa_i7  : out std_logic_vector(31 downto 0);
        wrk5_msa_i2  : out std_logic_vector(31 downto 0);
        wrk5_msa_new : in std_logic_vector(31 downto 0);

        wrk6_i_data  : in std_logic_vector(7 downto 0);
        wrk6_i_stat  : in std_logic_vector(6 downto 0);
        wrk6_o_data  : out std_logic_vector(7 downto 0);
        wrk6_o_stat  : out std_logic_vector(7 downto 0);
        wrk6_msa_i16 : out std_logic_vector(31 downto 0);
        wrk6_msa_i15 : out std_logic_vector(31 downto 0);
        wrk6_msa_i7  : out std_logic_vector(31 downto 0);
        wrk6_msa_i2  : out std_logic_vector(31 downto 0);
        wrk6_msa_new : in std_logic_vector(31 downto 0);

        wrk7_i_data  : in std_logic_vector(7 downto 0);
        wrk7_i_stat  : in std_logic_vector(6 downto 0);
        wrk7_o_data  : out std_logic_vector(7 downto 0);
        wrk7_o_stat  : out std_logic_vector(7 downto 0);
        wrk7_msa_i16 : out std_logic_vector(31 downto 0);
        wrk7_msa_i15 : out std_logic_vector(31 downto 0);
        wrk7_msa_i7  : out std_logic_vector(31 downto 0);
        wrk7_msa_i2  : out std_logic_vector(31 downto 0);
        wrk7_msa_new : in std_logic_vector(31 downto 0);

        wrk8_i_data  : in std_logic_vector(7 downto 0);
        wrk8_i_stat  : in std_logic_vector(6 downto 0);
        wrk8_o_data  : out std_logic_vector(7 downto 0);
        wrk8_o_stat  : out std_logic_vector(7 downto 0);
        wrk8_msa_i16 : out std_logic_vector(31 downto 0);
        wrk8_msa_i15 : out std_logic_vector(31 downto 0);
        wrk8_msa_i7  : out std_logic_vector(31 downto 0);
        wrk8_msa_i2  : out std_logic_vector(31 downto 0);
        wrk8_msa_new : in std_logic_vector(31 downto 0);

        wrk9_i_data  : in std_logic_vector(7 downto 0);
        wrk9_i_stat  : in std_logic_vector(6 downto 0);
        wrk9_o_data  : out std_logic_vector(7 downto 0);
        wrk9_o_stat  : out std_logic_vector(7 downto 0);
        wrk9_msa_i16 : out std_logic_vector(31 downto 0);
        wrk9_msa_i15 : out std_logic_vector(31 downto 0);
        wrk9_msa_i7  : out std_logic_vector(31 downto 0);
        wrk9_msa_i2  : out std_logic_vector(31 downto 0);
        wrk9_msa_new : in std_logic_vector(31 downto 0);

        wrk10_i_data  : in std_logic_vector(7 downto 0);
        wrk10_i_stat  : in std_logic_vector(6 downto 0);
        wrk10_o_data  : out std_logic_vector(7 downto 0);
        wrk10_o_stat  : out std_logic_vector(7 downto 0);
        wrk10_msa_i16 : out std_logic_vector(31 downto 0);
        wrk10_msa_i15 : out std_logic_vector(31 downto 0);
        wrk10_msa_i7  : out std_logic_vector(31 downto 0);
        wrk10_msa_i2  : out std_logic_vector(31 downto 0);
        wrk10_msa_new : in std_logic_vector(31 downto 0);

        wrk11_i_data  : in std_logic_vector(7 downto 0);
        wrk11_i_stat  : in std_logic_vector(6 downto 0);
        wrk11_o_data  : out std_logic_vector(7 downto 0);
        wrk11_o_stat  : out std_logic_vector(7 downto 0);
        wrk11_msa_i16 : out std_logic_vector(31 downto 0);
        wrk11_msa_i15 : out std_logic_vector(31 downto 0);
        wrk11_msa_i7  : out std_logic_vector(31 downto 0);
        wrk11_msa_i2  : out std_logic_vector(31 downto 0);
        wrk11_msa_new : in std_logic_vector(31 downto 0);

        wrk12_i_data  : in std_logic_vector(7 downto 0);
        wrk12_i_stat  : in std_logic_vector(6 downto 0);
        wrk12_o_data  : out std_logic_vector(7 downto 0);
        wrk12_o_stat  : out std_logic_vector(7 downto 0);
        wrk12_msa_i16 : out std_logic_vector(31 downto 0);
        wrk12_msa_i15 : out std_logic_vector(31 downto 0);
        wrk12_msa_i7  : out std_logic_vector(31 downto 0);
        wrk12_msa_i2  : out std_logic_vector(31 downto 0);
        wrk12_msa_new : in std_logic_vector(31 downto 0);

        wrk13_i_data  : in std_logic_vector(7 downto 0);
        wrk13_i_stat  : in std_logic_vector(6 downto 0);
        wrk13_o_data  : out std_logic_vector(7 downto 0);
        wrk13_o_stat  : out std_logic_vector(7 downto 0);
        wrk13_msa_i16 : out std_logic_vector(31 downto 0);
        wrk13_msa_i15 : out std_logic_vector(31 downto 0);
        wrk13_msa_i7  : out std_logic_vector(31 downto 0);
        wrk13_msa_i2  : out std_logic_vector(31 downto 0);
        wrk13_msa_new : in std_logic_vector(31 downto 0);

        wrk14_i_data  : in std_logic_vector(7 downto 0);
        wrk14_i_stat  : in std_logic_vector(6 downto 0);
        wrk14_o_data  : out std_logic_vector(7 downto 0);
        wrk14_o_stat  : out std_logic_vector(7 downto 0);
        wrk14_msa_i16 : out std_logic_vector(31 downto 0);
        wrk14_msa_i15 : out std_logic_vector(31 downto 0);
        wrk14_msa_i7  : out std_logic_vector(31 downto 0);
        wrk14_msa_i2  : out std_logic_vector(31 downto 0);
        wrk14_msa_new : in std_logic_vector(31 downto 0);

        wrk15_i_data  : in std_logic_vector(7 downto 0);
        wrk15_i_stat  : in std_logic_vector(6 downto 0);
        wrk15_o_data  : out std_logic_vector(7 downto 0);
        wrk15_o_stat  : out std_logic_vector(7 downto 0);
        wrk15_msa_i16 : out std_logic_vector(31 downto 0);
        wrk15_msa_i15 : out std_logic_vector(31 downto 0);
        wrk15_msa_i7  : out std_logic_vector(31 downto 0);
        wrk15_msa_i2  : out std_logic_vector(31 downto 0);
        wrk15_msa_new : in std_logic_vector(31 downto 0);

        wrk16_i_data  : in std_logic_vector(7 downto 0);
        wrk16_i_stat  : in std_logic_vector(6 downto 0);
        wrk16_o_data  : out std_logic_vector(7 downto 0);
        wrk16_o_stat  : out std_logic_vector(7 downto 0);
        wrk16_msa_i16 : out std_logic_vector(31 downto 0);
        wrk16_msa_i15 : out std_logic_vector(31 downto 0);
        wrk16_msa_i7  : out std_logic_vector(31 downto 0);
        wrk16_msa_i2  : out std_logic_vector(31 downto 0);
        wrk16_msa_new : in std_logic_vector(31 downto 0)
    );
end core_hash_wrapper;

architecture behavioral of core_hash_wrapper is
    component core is
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
    end component;

    component hash_circuity is
        port
        (
            hash_a_val   : in std_logic_vector(31 downto 0);
            hash_b_val   : in std_logic_vector(31 downto 0);
            hash_c_val   : in std_logic_vector(31 downto 0);
            hash_d_val   : in std_logic_vector(31 downto 0);
            hash_e_val   : in std_logic_vector(31 downto 0);
            hash_f_val   : in std_logic_vector(31 downto 0);
            hash_g_val   : in std_logic_vector(31 downto 0);
            hash_h_val   : in std_logic_vector(31 downto 0);
            hash_msa_val : in std_logic_vector(31 downto 0);
            hash_rc_val  : in std_logic_vector(31 downto 0);

            hash_new_a   : out std_logic_vector(31 downto 0);
            hash_new_e   : out std_logic_vector(31 downto 0)
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

    signal worker9_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker9_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker10_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker10_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker11_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker11_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker12_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker12_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker13_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker13_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker14_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker14_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker15_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker15_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    signal worker16_a_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_b_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_c_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_d_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_e_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_f_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_g_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_h_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_msa_in : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_rc_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_new_a  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker16_new_e  : std_logic_vector(31 downto 0) := (others => '0');

    -- status buffers
    signal wrk1_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk2_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk3_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk4_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk5_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk6_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk7_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk8_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk9_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk10_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk11_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk12_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk13_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk14_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk15_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk16_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    signal wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk9_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk10_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk11_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk12_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk13_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk14_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk15_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk16_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    -- signals for scheduling hash access
    signal int_req_buf : std_logic_vector(15 downto 0) := (others => '0');
    signal int_ack_buf : std_logic_vector(15 downto 0) := (others => '0');
    signal int_sig_buf : std_logic_vector(15 downto 0) := (others => '0');
begin
    wrk1_i_stat_buf <= wrk1_i_stat(6 downto 4) & int_sig_buf(0) & wrk1_i_stat(3 downto 0);
    wrk2_i_stat_buf <= wrk2_i_stat(6 downto 4) & int_sig_buf(1) & wrk2_i_stat(3 downto 0);
    wrk3_i_stat_buf <= wrk3_i_stat(6 downto 4) & int_sig_buf(2) & wrk3_i_stat(3 downto 0);
    wrk4_i_stat_buf <= wrk4_i_stat(6 downto 4) & int_sig_buf(3) & wrk4_i_stat(3 downto 0);
    wrk5_i_stat_buf <= wrk5_i_stat(6 downto 4) & int_sig_buf(4) & wrk5_i_stat(3 downto 0);
    wrk6_i_stat_buf <= wrk6_i_stat(6 downto 4) & int_sig_buf(5) & wrk6_i_stat(3 downto 0);
    wrk7_i_stat_buf <= wrk7_i_stat(6 downto 4) & int_sig_buf(6) & wrk7_i_stat(3 downto 0);
    wrk8_i_stat_buf <= wrk8_i_stat(6 downto 4) & int_sig_buf(7) & wrk8_i_stat(3 downto 0);
    wrk9_i_stat_buf <= wrk9_i_stat(6 downto 4) & int_sig_buf(8) & wrk9_i_stat(3 downto 0);
    wrk10_i_stat_buf <= wrk10_i_stat(6 downto 4) & int_sig_buf(9) & wrk10_i_stat(3 downto 0);
    wrk11_i_stat_buf <= wrk11_i_stat(6 downto 4) & int_sig_buf(10) & wrk11_i_stat(3 downto 0);
    wrk12_i_stat_buf <= wrk12_i_stat(6 downto 4) & int_sig_buf(11) & wrk12_i_stat(3 downto 0);
    wrk13_i_stat_buf <= wrk13_i_stat(6 downto 4) & int_sig_buf(12) & wrk13_i_stat(3 downto 0);
    wrk14_i_stat_buf <= wrk14_i_stat(6 downto 4) & int_sig_buf(13) & wrk14_i_stat(3 downto 0);
    wrk15_i_stat_buf <= wrk15_i_stat(6 downto 4) & int_sig_buf(14) & wrk15_i_stat(3 downto 0);
    wrk16_i_stat_buf <= wrk16_i_stat(6 downto 4) & int_sig_buf(15) & wrk16_i_stat(3 downto 0);

    wrk1_o_stat <= wrk1_o_stat_buf;
    wrk2_o_stat <= wrk2_o_stat_buf;
    wrk3_o_stat <= wrk3_o_stat_buf;
    wrk4_o_stat <= wrk4_o_stat_buf;
    wrk5_o_stat <= wrk5_o_stat_buf;
    wrk6_o_stat <= wrk6_o_stat_buf;
    wrk7_o_stat <= wrk7_o_stat_buf;
    wrk8_o_stat <= wrk8_o_stat_buf;
    wrk9_o_stat <= wrk9_o_stat_buf;
    wrk10_o_stat <= wrk10_o_stat_buf;
    wrk11_o_stat <= wrk11_o_stat_buf;
    wrk12_o_stat <= wrk12_o_stat_buf;
    wrk13_o_stat <= wrk13_o_stat_buf;
    wrk14_o_stat <= wrk14_o_stat_buf;
    wrk15_o_stat <= wrk15_o_stat_buf;
    wrk16_o_stat <= wrk16_o_stat_buf;

    -- instantiate submodules
    hasher_crct : hash_circuity
        port map
        (
            hash_a_val   => hasher_a_in,
            hash_b_val   => hasher_b_in,
            hash_c_val   => hasher_c_in,
            hash_d_val   => hasher_d_in,
            hash_e_val   => hasher_e_in,
            hash_f_val   => hasher_f_in,
            hash_g_val   => hasher_g_in,
            hash_h_val   => hasher_h_in,
            hash_msa_val => hasher_msa_in,
            hash_rc_val  => hasher_rc_in,

            hash_new_a   => hasher_new_a,
            hash_new_e   => hasher_new_e
        );

    worker1 : core
        port map
        (
            clk          => clk,

            i_data       => wrk1_i_data,
            i_stat       => wrk1_i_stat_buf,

            o_data       => wrk1_o_data,
            o_stat       => wrk1_o_stat_buf,

            o_msa_i16    => wrk1_msa_i16,
            o_msa_i15    => wrk1_msa_i15,
            o_msa_i7     => wrk1_msa_i7,
            o_msa_i2     => wrk1_msa_i2,
            i_msa_new    => wrk1_msa_new,

            o_hash_a     => worker1_a_in,
            o_hash_b     => worker1_b_in,
            o_hash_c     => worker1_c_in,
            o_hash_d     => worker1_d_in,
            o_hash_e     => worker1_e_in,
            o_hash_f     => worker1_f_in,
            o_hash_g     => worker1_g_in,
            o_hash_h     => worker1_h_in,
            o_hash_msa   => worker1_msa_in,
            o_hash_rc    => worker1_rc_in,

            i_hash_new_a => worker1_new_a,
            i_hash_new_e => worker1_new_e
        );
    worker2 : core
        port map
        (
            clk          => clk,

            i_data       => wrk2_i_data,
            i_stat       => wrk2_i_stat_buf,

            o_data       => wrk2_o_data,
            o_stat       => wrk2_o_stat_buf,

            o_msa_i16    => wrk2_msa_i16,
            o_msa_i15    => wrk2_msa_i15,
            o_msa_i7     => wrk2_msa_i7,
            o_msa_i2     => wrk2_msa_i2,
            i_msa_new    => wrk2_msa_new,

            o_hash_a     => worker2_a_in,
            o_hash_b     => worker2_b_in,
            o_hash_c     => worker2_c_in,
            o_hash_d     => worker2_d_in,
            o_hash_e     => worker2_e_in,
            o_hash_f     => worker2_f_in,
            o_hash_g     => worker2_g_in,
            o_hash_h     => worker2_h_in,
            o_hash_msa   => worker2_msa_in,
            o_hash_rc    => worker2_rc_in,

            i_hash_new_a => worker2_new_a,
            i_hash_new_e => worker2_new_e
        );
    worker3 : core
        port map
        (
            clk          => clk,

            i_data       => wrk3_i_data,
            i_stat       => wrk3_i_stat_buf,

            o_data       => wrk3_o_data,
            o_stat       => wrk3_o_stat_buf,

            o_msa_i16    => wrk3_msa_i16,
            o_msa_i15    => wrk3_msa_i15,
            o_msa_i7     => wrk3_msa_i7,
            o_msa_i2     => wrk3_msa_i2,
            i_msa_new    => wrk3_msa_new,

            o_hash_a     => worker3_a_in,
            o_hash_b     => worker3_b_in,
            o_hash_c     => worker3_c_in,
            o_hash_d     => worker3_d_in,
            o_hash_e     => worker3_e_in,
            o_hash_f     => worker3_f_in,
            o_hash_g     => worker3_g_in,
            o_hash_h     => worker3_h_in,
            o_hash_msa   => worker3_msa_in,
            o_hash_rc    => worker3_rc_in,

            i_hash_new_a => worker3_new_a,
            i_hash_new_e => worker3_new_e
        );
    worker4 : core
        port map
        (
            clk          => clk,

            i_data       => wrk4_i_data,
            i_stat       => wrk4_i_stat_buf,

            o_data       => wrk4_o_data,
            o_stat       => wrk4_o_stat_buf,

            o_msa_i16    => wrk4_msa_i16,
            o_msa_i15    => wrk4_msa_i15,
            o_msa_i7     => wrk4_msa_i7,
            o_msa_i2     => wrk4_msa_i2,
            i_msa_new    => wrk4_msa_new,

            o_hash_a     => worker4_a_in,
            o_hash_b     => worker4_b_in,
            o_hash_c     => worker4_c_in,
            o_hash_d     => worker4_d_in,
            o_hash_e     => worker4_e_in,
            o_hash_f     => worker4_f_in,
            o_hash_g     => worker4_g_in,
            o_hash_h     => worker4_h_in,
            o_hash_msa   => worker4_msa_in,
            o_hash_rc    => worker4_rc_in,

            i_hash_new_a => worker4_new_a,
            i_hash_new_e => worker4_new_e
        );
    worker5 : core
        port map
        (
            clk          => clk,

            i_data       => wrk5_i_data,
            i_stat       => wrk5_i_stat_buf,

            o_data       => wrk5_o_data,
            o_stat       => wrk5_o_stat_buf,

            o_msa_i16    => wrk5_msa_i16,
            o_msa_i15    => wrk5_msa_i15,
            o_msa_i7     => wrk5_msa_i7,
            o_msa_i2     => wrk5_msa_i2,
            i_msa_new    => wrk5_msa_new,

            o_hash_a     => worker5_a_in,
            o_hash_b     => worker5_b_in,
            o_hash_c     => worker5_c_in,
            o_hash_d     => worker5_d_in,
            o_hash_e     => worker5_e_in,
            o_hash_f     => worker5_f_in,
            o_hash_g     => worker5_g_in,
            o_hash_h     => worker5_h_in,
            o_hash_msa   => worker5_msa_in,
            o_hash_rc    => worker5_rc_in,

            i_hash_new_a => worker5_new_a,
            i_hash_new_e => worker5_new_e
        );
    worker6 : core
        port map
        (
            clk          => clk,

            i_data       => wrk6_i_data,
            i_stat       => wrk6_i_stat_buf,

            o_data       => wrk6_o_data,
            o_stat       => wrk6_o_stat_buf,

            o_msa_i16    => wrk6_msa_i16,
            o_msa_i15    => wrk6_msa_i15,
            o_msa_i7     => wrk6_msa_i7,
            o_msa_i2     => wrk6_msa_i2,
            i_msa_new    => wrk6_msa_new,

            o_hash_a     => worker6_a_in,
            o_hash_b     => worker6_b_in,
            o_hash_c     => worker6_c_in,
            o_hash_d     => worker6_d_in,
            o_hash_e     => worker6_e_in,
            o_hash_f     => worker6_f_in,
            o_hash_g     => worker6_g_in,
            o_hash_h     => worker6_h_in,
            o_hash_msa   => worker6_msa_in,
            o_hash_rc    => worker6_rc_in,

            i_hash_new_a => worker6_new_a,
            i_hash_new_e => worker6_new_e
        );
    worker7 : core
        port map
        (
            clk          => clk,

            i_data       => wrk7_i_data,
            i_stat       => wrk7_i_stat_buf,

            o_data       => wrk7_o_data,
            o_stat       => wrk7_o_stat_buf,

            o_msa_i16    => wrk7_msa_i16,
            o_msa_i15    => wrk7_msa_i15,
            o_msa_i7     => wrk7_msa_i7,
            o_msa_i2     => wrk7_msa_i2,
            i_msa_new    => wrk7_msa_new,

            o_hash_a     => worker7_a_in,
            o_hash_b     => worker7_b_in,
            o_hash_c     => worker7_c_in,
            o_hash_d     => worker7_d_in,
            o_hash_e     => worker7_e_in,
            o_hash_f     => worker7_f_in,
            o_hash_g     => worker7_g_in,
            o_hash_h     => worker7_h_in,
            o_hash_msa   => worker7_msa_in,
            o_hash_rc    => worker7_rc_in,

            i_hash_new_a => worker7_new_a,
            i_hash_new_e => worker7_new_e
        );
    worker8 : core
        port map
        (
            clk          => clk,

            i_data       => wrk8_i_data,
            i_stat       => wrk8_i_stat_buf,

            o_data       => wrk8_o_data,
            o_stat       => wrk8_o_stat_buf,

            o_msa_i16    => wrk8_msa_i16,
            o_msa_i15    => wrk8_msa_i15,
            o_msa_i7     => wrk8_msa_i7,
            o_msa_i2     => wrk8_msa_i2,
            i_msa_new    => wrk8_msa_new,

            o_hash_a     => worker8_a_in,
            o_hash_b     => worker8_b_in,
            o_hash_c     => worker8_c_in,
            o_hash_d     => worker8_d_in,
            o_hash_e     => worker8_e_in,
            o_hash_f     => worker8_f_in,
            o_hash_g     => worker8_g_in,
            o_hash_h     => worker8_h_in,
            o_hash_msa   => worker8_msa_in,
            o_hash_rc    => worker8_rc_in,

            i_hash_new_a => worker8_new_a,
            i_hash_new_e => worker8_new_e
        );
    worker9 : core
        port map
        (
            clk          => clk,

            i_data       => wrk9_i_data,
            i_stat       => wrk9_i_stat_buf,

            o_data       => wrk9_o_data,
            o_stat       => wrk9_o_stat_buf,

            o_msa_i16    => wrk9_msa_i16,
            o_msa_i15    => wrk9_msa_i15,
            o_msa_i7     => wrk9_msa_i7,
            o_msa_i2     => wrk9_msa_i2,
            i_msa_new    => wrk9_msa_new,

            o_hash_a     => worker9_a_in,
            o_hash_b     => worker9_b_in,
            o_hash_c     => worker9_c_in,
            o_hash_d     => worker9_d_in,
            o_hash_e     => worker9_e_in,
            o_hash_f     => worker9_f_in,
            o_hash_g     => worker9_g_in,
            o_hash_h     => worker9_h_in,
            o_hash_msa   => worker9_msa_in,
            o_hash_rc    => worker9_rc_in,

            i_hash_new_a => worker9_new_a,
            i_hash_new_e => worker9_new_e
        );
    worker10 : core
        port map
        (
            clk          => clk,

            i_data       => wrk10_i_data,
            i_stat       => wrk10_i_stat_buf,

            o_data       => wrk10_o_data,
            o_stat       => wrk10_o_stat_buf,

            o_msa_i16    => wrk10_msa_i16,
            o_msa_i15    => wrk10_msa_i15,
            o_msa_i7     => wrk10_msa_i7,
            o_msa_i2     => wrk10_msa_i2,
            i_msa_new    => wrk10_msa_new,

            o_hash_a     => worker10_a_in,
            o_hash_b     => worker10_b_in,
            o_hash_c     => worker10_c_in,
            o_hash_d     => worker10_d_in,
            o_hash_e     => worker10_e_in,
            o_hash_f     => worker10_f_in,
            o_hash_g     => worker10_g_in,
            o_hash_h     => worker10_h_in,
            o_hash_msa   => worker10_msa_in,
            o_hash_rc    => worker10_rc_in,

            i_hash_new_a => worker10_new_a,
            i_hash_new_e => worker10_new_e
        );
    worker11 : core
        port map
        (
            clk          => clk,

            i_data       => wrk11_i_data,
            i_stat       => wrk11_i_stat_buf,

            o_data       => wrk11_o_data,
            o_stat       => wrk11_o_stat_buf,

            o_msa_i16    => wrk11_msa_i16,
            o_msa_i15    => wrk11_msa_i15,
            o_msa_i7     => wrk11_msa_i7,
            o_msa_i2     => wrk11_msa_i2,
            i_msa_new    => wrk11_msa_new,

            o_hash_a     => worker11_a_in,
            o_hash_b     => worker11_b_in,
            o_hash_c     => worker11_c_in,
            o_hash_d     => worker11_d_in,
            o_hash_e     => worker11_e_in,
            o_hash_f     => worker11_f_in,
            o_hash_g     => worker11_g_in,
            o_hash_h     => worker11_h_in,
            o_hash_msa   => worker11_msa_in,
            o_hash_rc    => worker11_rc_in,

            i_hash_new_a => worker11_new_a,
            i_hash_new_e => worker11_new_e
        );
    worker12 : core
        port map
        (
            clk          => clk,

            i_data       => wrk12_i_data,
            i_stat       => wrk12_i_stat_buf,

            o_data       => wrk12_o_data,
            o_stat       => wrk12_o_stat_buf,

            o_msa_i16    => wrk12_msa_i16,
            o_msa_i15    => wrk12_msa_i15,
            o_msa_i7     => wrk12_msa_i7,
            o_msa_i2     => wrk12_msa_i2,
            i_msa_new    => wrk12_msa_new,

            o_hash_a     => worker12_a_in,
            o_hash_b     => worker12_b_in,
            o_hash_c     => worker12_c_in,
            o_hash_d     => worker12_d_in,
            o_hash_e     => worker12_e_in,
            o_hash_f     => worker12_f_in,
            o_hash_g     => worker12_g_in,
            o_hash_h     => worker12_h_in,
            o_hash_msa   => worker12_msa_in,
            o_hash_rc    => worker12_rc_in,

            i_hash_new_a => worker12_new_a,
            i_hash_new_e => worker12_new_e
        );
    worker13 : core
        port map
        (
            clk          => clk,

            i_data       => wrk13_i_data,
            i_stat       => wrk13_i_stat_buf,

            o_data       => wrk13_o_data,
            o_stat       => wrk13_o_stat_buf,

            o_msa_i16    => wrk13_msa_i16,
            o_msa_i15    => wrk13_msa_i15,
            o_msa_i7     => wrk13_msa_i7,
            o_msa_i2     => wrk13_msa_i2,
            i_msa_new    => wrk13_msa_new,

            o_hash_a     => worker13_a_in,
            o_hash_b     => worker13_b_in,
            o_hash_c     => worker13_c_in,
            o_hash_d     => worker13_d_in,
            o_hash_e     => worker13_e_in,
            o_hash_f     => worker13_f_in,
            o_hash_g     => worker13_g_in,
            o_hash_h     => worker13_h_in,
            o_hash_msa   => worker13_msa_in,
            o_hash_rc    => worker13_rc_in,

            i_hash_new_a => worker13_new_a,
            i_hash_new_e => worker13_new_e
        );
    worker14 : core
        port map
        (
            clk          => clk,

            i_data       => wrk14_i_data,
            i_stat       => wrk14_i_stat_buf,

            o_data       => wrk14_o_data,
            o_stat       => wrk14_o_stat_buf,

            o_msa_i16    => wrk14_msa_i16,
            o_msa_i15    => wrk14_msa_i15,
            o_msa_i7     => wrk14_msa_i7,
            o_msa_i2     => wrk14_msa_i2,
            i_msa_new    => wrk14_msa_new,

            o_hash_a     => worker14_a_in,
            o_hash_b     => worker14_b_in,
            o_hash_c     => worker14_c_in,
            o_hash_d     => worker14_d_in,
            o_hash_e     => worker14_e_in,
            o_hash_f     => worker14_f_in,
            o_hash_g     => worker14_g_in,
            o_hash_h     => worker14_h_in,
            o_hash_msa   => worker14_msa_in,
            o_hash_rc    => worker14_rc_in,

            i_hash_new_a => worker14_new_a,
            i_hash_new_e => worker14_new_e
        );
    worker15 : core
        port map
        (
            clk          => clk,

            i_data       => wrk15_i_data,
            i_stat       => wrk15_i_stat_buf,

            o_data       => wrk15_o_data,
            o_stat       => wrk15_o_stat_buf,

            o_msa_i16    => wrk15_msa_i16,
            o_msa_i15    => wrk15_msa_i15,
            o_msa_i7     => wrk15_msa_i7,
            o_msa_i2     => wrk15_msa_i2,
            i_msa_new    => wrk15_msa_new,

            o_hash_a     => worker15_a_in,
            o_hash_b     => worker15_b_in,
            o_hash_c     => worker15_c_in,
            o_hash_d     => worker15_d_in,
            o_hash_e     => worker15_e_in,
            o_hash_f     => worker15_f_in,
            o_hash_g     => worker15_g_in,
            o_hash_h     => worker15_h_in,
            o_hash_msa   => worker15_msa_in,
            o_hash_rc    => worker15_rc_in,

            i_hash_new_a => worker15_new_a,
            i_hash_new_e => worker15_new_e
        );
    worker16 : core
        port map
        (
            clk          => clk,

            i_data       => wrk16_i_data,
            i_stat       => wrk16_i_stat_buf,

            o_data       => wrk16_o_data,
            o_stat       => wrk16_o_stat_buf,

            o_msa_i16    => wrk16_msa_i16,
            o_msa_i15    => wrk16_msa_i15,
            o_msa_i7     => wrk16_msa_i7,
            o_msa_i2     => wrk16_msa_i2,
            i_msa_new    => wrk16_msa_new,

            o_hash_a     => worker16_a_in,
            o_hash_b     => worker16_b_in,
            o_hash_c     => worker16_c_in,
            o_hash_d     => worker16_d_in,
            o_hash_e     => worker16_e_in,
            o_hash_f     => worker16_f_in,
            o_hash_g     => worker16_g_in,
            o_hash_h     => worker16_h_in,
            o_hash_msa   => worker16_msa_in,
            o_hash_rc    => worker16_rc_in,

            i_hash_new_a => worker16_new_a,
            i_hash_new_e => worker16_new_e
        );

    int_req_buf <= wrk16_o_stat_buf(4) & wrk15_o_stat_buf(4) &
                   wrk14_o_stat_buf(4) & wrk13_o_stat_buf(4) &
                   wrk12_o_stat_buf(4) & wrk11_o_stat_buf(4) &
                   wrk10_o_stat_buf(4) & wrk9_o_stat_buf(4) &
                   wrk8_o_stat_buf(4) & wrk7_o_stat_buf(4) &
                   wrk6_o_stat_buf(4) & wrk5_o_stat_buf(4) &
                   wrk4_o_stat_buf(4) & wrk3_o_stat_buf(4) &
                   wrk2_o_stat_buf(4) & wrk1_o_stat_buf(4);
    int_ack_buf <= int_sig_buf and int_req_buf;

    hasher_a_in <= worker1_a_in when int_ack_buf = "0000000000000001" else
                   worker2_a_in when int_ack_buf = "0000000000000010" else
                   worker3_a_in when int_ack_buf = "0000000000000100" else
                   worker4_a_in when int_ack_buf = "0000000000001000" else
                   worker5_a_in when int_ack_buf = "0000000000010000" else
                   worker6_a_in when int_ack_buf = "0000000000100000" else
                   worker7_a_in when int_ack_buf = "0000000001000000" else
                   worker8_a_in when int_ack_buf = "0000000010000000" else
                   worker9_a_in when int_ack_buf = "0000000100000000" else
                   worker10_a_in when int_ack_buf = "0000001000000000" else
                   worker11_a_in when int_ack_buf = "0000010000000000" else
                   worker12_a_in when int_ack_buf = "0000100000000000" else
                   worker13_a_in when int_ack_buf = "0001000000000000" else
                   worker14_a_in when int_ack_buf = "0010000000000000" else
                   worker15_a_in when int_ack_buf = "0100000000000000" else
                   worker16_a_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_b_in <= worker1_b_in when int_ack_buf = "0000000000000001" else
                   worker2_b_in when int_ack_buf = "0000000000000010" else
                   worker3_b_in when int_ack_buf = "0000000000000100" else
                   worker4_b_in when int_ack_buf = "0000000000001000" else
                   worker5_b_in when int_ack_buf = "0000000000010000" else
                   worker6_b_in when int_ack_buf = "0000000000100000" else
                   worker7_b_in when int_ack_buf = "0000000001000000" else
                   worker8_b_in when int_ack_buf = "0000000010000000" else
                   worker9_b_in when int_ack_buf = "0000000100000000" else
                   worker10_b_in when int_ack_buf = "0000001000000000" else
                   worker11_b_in when int_ack_buf = "0000010000000000" else
                   worker12_b_in when int_ack_buf = "0000100000000000" else
                   worker13_b_in when int_ack_buf = "0001000000000000" else
                   worker14_b_in when int_ack_buf = "0010000000000000" else
                   worker15_b_in when int_ack_buf = "0100000000000000" else
                   worker16_b_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_c_in <= worker1_c_in when int_ack_buf = "0000000000000001" else
                   worker2_c_in when int_ack_buf = "0000000000000010" else
                   worker3_c_in when int_ack_buf = "0000000000000100" else
                   worker4_c_in when int_ack_buf = "0000000000001000" else
                   worker5_c_in when int_ack_buf = "0000000000010000" else
                   worker6_c_in when int_ack_buf = "0000000000100000" else
                   worker7_c_in when int_ack_buf = "0000000001000000" else
                   worker8_c_in when int_ack_buf = "0000000010000000" else
                   worker9_c_in when int_ack_buf = "0000000100000000" else
                   worker10_c_in when int_ack_buf = "0000001000000000" else
                   worker11_c_in when int_ack_buf = "0000010000000000" else
                   worker12_c_in when int_ack_buf = "0000100000000000" else
                   worker13_c_in when int_ack_buf = "0001000000000000" else
                   worker14_c_in when int_ack_buf = "0010000000000000" else
                   worker15_c_in when int_ack_buf = "0100000000000000" else
                   worker16_c_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_d_in <= worker1_d_in when int_ack_buf = "0000000000000001" else
                   worker2_d_in when int_ack_buf = "0000000000000010" else
                   worker3_d_in when int_ack_buf = "0000000000000100" else
                   worker4_d_in when int_ack_buf = "0000000000001000" else
                   worker5_d_in when int_ack_buf = "0000000000010000" else
                   worker6_d_in when int_ack_buf = "0000000000100000" else
                   worker7_d_in when int_ack_buf = "0000000001000000" else
                   worker8_d_in when int_ack_buf = "0000000010000000" else
                   worker9_d_in when int_ack_buf = "0000000100000000" else
                   worker10_d_in when int_ack_buf = "0000001000000000" else
                   worker11_d_in when int_ack_buf = "0000010000000000" else
                   worker12_d_in when int_ack_buf = "0000100000000000" else
                   worker13_d_in when int_ack_buf = "0001000000000000" else
                   worker14_d_in when int_ack_buf = "0010000000000000" else
                   worker15_d_in when int_ack_buf = "0100000000000000" else
                   worker16_d_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_e_in <= worker1_e_in when int_ack_buf = "0000000000000001" else
                   worker2_e_in when int_ack_buf = "0000000000000010" else
                   worker3_e_in when int_ack_buf = "0000000000000100" else
                   worker4_e_in when int_ack_buf = "0000000000001000" else
                   worker5_e_in when int_ack_buf = "0000000000010000" else
                   worker6_e_in when int_ack_buf = "0000000000100000" else
                   worker7_e_in when int_ack_buf = "0000000001000000" else
                   worker8_e_in when int_ack_buf = "0000000010000000" else
                   worker9_e_in when int_ack_buf = "0000000100000000" else
                   worker10_e_in when int_ack_buf = "0000001000000000" else
                   worker11_e_in when int_ack_buf = "0000010000000000" else
                   worker12_e_in when int_ack_buf = "0000100000000000" else
                   worker13_e_in when int_ack_buf = "0001000000000000" else
                   worker14_e_in when int_ack_buf = "0010000000000000" else
                   worker15_e_in when int_ack_buf = "0100000000000000" else
                   worker16_e_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_f_in <= worker1_f_in when int_ack_buf = "0000000000000001" else
                   worker2_f_in when int_ack_buf = "0000000000000010" else
                   worker3_f_in when int_ack_buf = "0000000000000100" else
                   worker4_f_in when int_ack_buf = "0000000000001000" else
                   worker5_f_in when int_ack_buf = "0000000000010000" else
                   worker6_f_in when int_ack_buf = "0000000000100000" else
                   worker7_f_in when int_ack_buf = "0000000001000000" else
                   worker8_f_in when int_ack_buf = "0000000010000000" else
                   worker9_f_in when int_ack_buf = "0000000100000000" else
                   worker10_f_in when int_ack_buf = "0000001000000000" else
                   worker11_f_in when int_ack_buf = "0000010000000000" else
                   worker12_f_in when int_ack_buf = "0000100000000000" else
                   worker13_f_in when int_ack_buf = "0001000000000000" else
                   worker14_f_in when int_ack_buf = "0010000000000000" else
                   worker15_f_in when int_ack_buf = "0100000000000000" else
                   worker16_f_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_g_in <= worker1_g_in when int_ack_buf = "0000000000000001" else
                   worker2_g_in when int_ack_buf = "0000000000000010" else
                   worker3_g_in when int_ack_buf = "0000000000000100" else
                   worker4_g_in when int_ack_buf = "0000000000001000" else
                   worker5_g_in when int_ack_buf = "0000000000010000" else
                   worker6_g_in when int_ack_buf = "0000000000100000" else
                   worker7_g_in when int_ack_buf = "0000000001000000" else
                   worker8_g_in when int_ack_buf = "0000000010000000" else
                   worker9_g_in when int_ack_buf = "0000000100000000" else
                   worker10_g_in when int_ack_buf = "0000001000000000" else
                   worker11_g_in when int_ack_buf = "0000010000000000" else
                   worker12_g_in when int_ack_buf = "0000100000000000" else
                   worker13_g_in when int_ack_buf = "0001000000000000" else
                   worker14_g_in when int_ack_buf = "0010000000000000" else
                   worker15_g_in when int_ack_buf = "0100000000000000" else
                   worker16_g_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_h_in <= worker1_h_in when int_ack_buf = "0000000000000001" else
                   worker2_h_in when int_ack_buf = "0000000000000010" else
                   worker3_h_in when int_ack_buf = "0000000000000100" else
                   worker4_h_in when int_ack_buf = "0000000000001000" else
                   worker5_h_in when int_ack_buf = "0000000000010000" else
                   worker6_h_in when int_ack_buf = "0000000000100000" else
                   worker7_h_in when int_ack_buf = "0000000001000000" else
                   worker8_h_in when int_ack_buf = "0000000010000000" else
                   worker9_h_in when int_ack_buf = "0000000100000000" else
                   worker10_h_in when int_ack_buf = "0000001000000000" else
                   worker11_h_in when int_ack_buf = "0000010000000000" else
                   worker12_h_in when int_ack_buf = "0000100000000000" else
                   worker13_h_in when int_ack_buf = "0001000000000000" else
                   worker14_h_in when int_ack_buf = "0010000000000000" else
                   worker15_h_in when int_ack_buf = "0100000000000000" else
                   worker16_h_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_msa_in <= worker1_msa_in when int_ack_buf = "0000000000000001" else
                   worker2_msa_in when int_ack_buf = "0000000000000010" else
                   worker3_msa_in when int_ack_buf = "0000000000000100" else
                   worker4_msa_in when int_ack_buf = "0000000000001000" else
                   worker5_msa_in when int_ack_buf = "0000000000010000" else
                   worker6_msa_in when int_ack_buf = "0000000000100000" else
                   worker7_msa_in when int_ack_buf = "0000000001000000" else
                   worker8_msa_in when int_ack_buf = "0000000010000000" else
                   worker9_msa_in when int_ack_buf = "0000000100000000" else
                   worker10_msa_in when int_ack_buf = "0000001000000000" else
                   worker11_msa_in when int_ack_buf = "0000010000000000" else
                   worker12_msa_in when int_ack_buf = "0000100000000000" else
                   worker13_msa_in when int_ack_buf = "0001000000000000" else
                   worker14_msa_in when int_ack_buf = "0010000000000000" else
                   worker15_msa_in when int_ack_buf = "0100000000000000" else
                   worker16_msa_in when int_ack_buf = "1000000000000000" else
                   (others => '0');
    hasher_rc_in <= worker1_rc_in when int_ack_buf = "0000000000000001" else
                   worker2_rc_in when int_ack_buf = "0000000000000010" else
                   worker3_rc_in when int_ack_buf = "0000000000000100" else
                   worker4_rc_in when int_ack_buf = "0000000000001000" else
                   worker5_rc_in when int_ack_buf = "0000000000010000" else
                   worker6_rc_in when int_ack_buf = "0000000000100000" else
                   worker7_rc_in when int_ack_buf = "0000000001000000" else
                   worker8_rc_in when int_ack_buf = "0000000010000000" else
                   worker9_rc_in when int_ack_buf = "0000000100000000" else
                   worker10_rc_in when int_ack_buf = "0000001000000000" else
                   worker11_rc_in when int_ack_buf = "0000010000000000" else
                   worker12_rc_in when int_ack_buf = "0000100000000000" else
                   worker13_rc_in when int_ack_buf = "0001000000000000" else
                   worker14_rc_in when int_ack_buf = "0010000000000000" else
                   worker15_rc_in when int_ack_buf = "0100000000000000" else
                   worker16_rc_in when int_ack_buf = "1000000000000000" else
                   (others => '0');

    worker1_new_a <= hasher_new_a when int_ack_buf = "0000000000000001" else (others => '0');
    worker2_new_a <= hasher_new_a when int_ack_buf = "0000000000000010" else (others => '0');
    worker3_new_a <= hasher_new_a when int_ack_buf = "0000000000000100" else (others => '0');
    worker4_new_a <= hasher_new_a when int_ack_buf = "0000000000001000" else (others => '0');
    worker5_new_a <= hasher_new_a when int_ack_buf = "0000000000010000" else (others => '0');
    worker6_new_a <= hasher_new_a when int_ack_buf = "0000000000100000" else (others => '0');
    worker7_new_a <= hasher_new_a when int_ack_buf = "0000000001000000" else (others => '0');
    worker8_new_a <= hasher_new_a when int_ack_buf = "0000000010000000" else (others => '0');
    worker9_new_a <= hasher_new_a when int_ack_buf = "0000000100000000" else (others => '0');
    worker10_new_a <= hasher_new_a when int_ack_buf = "0000001000000000" else (others => '0');
    worker11_new_a <= hasher_new_a when int_ack_buf = "0000010000000000" else (others => '0');
    worker12_new_a <= hasher_new_a when int_ack_buf = "0000100000000000" else (others => '0');
    worker13_new_a <= hasher_new_a when int_ack_buf = "0001000000000000" else (others => '0');
    worker14_new_a <= hasher_new_a when int_ack_buf = "0010000000000000" else (others => '0');
    worker15_new_a <= hasher_new_a when int_ack_buf = "0100000000000000" else (others => '0');
    worker16_new_a <= hasher_new_a when int_ack_buf = "1000000000000000" else (others => '0');

    worker1_new_e <= hasher_new_e when int_ack_buf = "0000000000000001" else (others => '0');
    worker2_new_e <= hasher_new_e when int_ack_buf = "0000000000000010" else (others => '0');
    worker3_new_e <= hasher_new_e when int_ack_buf = "0000000000000100" else (others => '0');
    worker4_new_e <= hasher_new_e when int_ack_buf = "0000000000001000" else (others => '0');
    worker5_new_e <= hasher_new_e when int_ack_buf = "0000000000010000" else (others => '0');
    worker6_new_e <= hasher_new_e when int_ack_buf = "0000000000100000" else (others => '0');
    worker7_new_e <= hasher_new_e when int_ack_buf = "0000000001000000" else (others => '0');
    worker8_new_e <= hasher_new_e when int_ack_buf = "0000000010000000" else (others => '0');
    worker9_new_e <= hasher_new_e when int_ack_buf = "0000000100000000" else (others => '0');
    worker10_new_e <= hasher_new_e when int_ack_buf = "0000001000000000" else (others => '0');
    worker11_new_e <= hasher_new_e when int_ack_buf = "0000010000000000" else (others => '0');
    worker12_new_e <= hasher_new_e when int_ack_buf = "0000100000000000" else (others => '0');
    worker13_new_e <= hasher_new_e when int_ack_buf = "0001000000000000" else (others => '0');
    worker14_new_e <= hasher_new_e when int_ack_buf = "0010000000000000" else (others => '0');
    worker15_new_e <= hasher_new_e when int_ack_buf = "0100000000000000" else (others => '0');
    worker16_new_e <= hasher_new_e when int_ack_buf = "1000000000000000" else (others => '0');

    schedule_hash_access : process(clk)
        variable toggle : std_logic := '0';
    begin
        if rising_edge(clk) then
            if toggle = '1' then
                if    int_req_buf(0) = '1' then int_sig_buf(0) <= '1';
                elsif int_req_buf(1) = '1' then int_sig_buf(1) <= '1';
                elsif int_req_buf(2) = '1' then int_sig_buf(2) <= '1';
                elsif int_req_buf(3) = '1' then int_sig_buf(3) <= '1';
                elsif int_req_buf(4) = '1' then int_sig_buf(4) <= '1';
                elsif int_req_buf(5) = '1' then int_sig_buf(5) <= '1';
                elsif int_req_buf(6) = '1' then int_sig_buf(6) <= '1';
                elsif int_req_buf(7) = '1' then int_sig_buf(7) <= '1';
                elsif int_req_buf(8) = '1' then int_sig_buf(8) <= '1';
                elsif int_req_buf(9) = '1' then int_sig_buf(9) <= '1';
                elsif int_req_buf(10) = '1' then int_sig_buf(10) <= '1';
                elsif int_req_buf(11) = '1' then int_sig_buf(11) <= '1';
                elsif int_req_buf(12) = '1' then int_sig_buf(12) <= '1';
                elsif int_req_buf(13) = '1' then int_sig_buf(13) <= '1';
                elsif int_req_buf(14) = '1' then int_sig_buf(14) <= '1';
                elsif int_req_buf(15) = '1' then int_sig_buf(15) <= '1';
                end if;
            end if;

            if int_ack_buf(0) = '1' then int_sig_buf(0) <= '0'; end if;
            if int_ack_buf(1) = '1' then int_sig_buf(1) <= '0'; end if;
            if int_ack_buf(2) = '1' then int_sig_buf(2) <= '0'; end if;
            if int_ack_buf(3) = '1' then int_sig_buf(3) <= '0'; end if;
            if int_ack_buf(4) = '1' then int_sig_buf(4) <= '0'; end if;
            if int_ack_buf(5) = '1' then int_sig_buf(5) <= '0'; end if;
            if int_ack_buf(6) = '1' then int_sig_buf(6) <= '0'; end if;
            if int_ack_buf(7) = '1' then int_sig_buf(7) <= '0'; end if;
            if int_ack_buf(8) = '1' then int_sig_buf(8) <= '0'; end if;
            if int_ack_buf(9) = '1' then int_sig_buf(9) <= '0'; end if;
            if int_ack_buf(10) = '1' then int_sig_buf(10) <= '0'; end if;
            if int_ack_buf(11) = '1' then int_sig_buf(11) <= '0'; end if;
            if int_ack_buf(12) = '1' then int_sig_buf(12) <= '0'; end if;
            if int_ack_buf(13) = '1' then int_sig_buf(13) <= '0'; end if;
            if int_ack_buf(14) = '1' then int_sig_buf(14) <= '0'; end if;
            if int_ack_buf(15) = '1' then int_sig_buf(15) <= '0'; end if;

            toggle := not toggle;
        end if;
    end process schedule_hash_access;
end behavioral;
