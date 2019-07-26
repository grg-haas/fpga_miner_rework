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
    signal worker1_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker1_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker1_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker1_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker1_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker1_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker2_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker2_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker2_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker2_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker2_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker2_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker3_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker3_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker3_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker3_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker3_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker3_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker4_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker4_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker4_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker4_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker4_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker4_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker5_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker5_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker5_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker5_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker5_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker5_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker6_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker6_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker6_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker6_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker6_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker6_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker7_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker7_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker7_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker7_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker7_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker7_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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

    signal worker8_data_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker8_stat_in  : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker8_data_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker8_stat_out : std_logic_vector(7 downto 0)  := (others => '0');
    signal worker8_msa_i16  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_msa_i15  : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_msa_i7   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_msa_i2   : std_logic_vector(31 downto 0) := (others => '0');
    signal worker8_msa_new  : std_logic_vector(31 downto 0) := (others => '0');

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
    -- map hashing signals
    hasher_a_in <= worker1_a_in when worker_sel = "1000" else
                   worker2_a_in when worker_sel = "1001" else
                   worker3_a_in when worker_sel = "1010" else
                   worker4_a_in when worker_sel = "1011" else
                   worker5_a_in when worker_sel = "1100" else
                   worker6_a_in when worker_sel = "1101" else
                   worker7_a_in when worker_sel = "1110" else
                   worker8_a_in when worker_sel = "1111" else
                   (others => '0');
    hasher_b_in <= worker1_b_in when worker_sel = "1000" else
                   worker2_b_in when worker_sel = "1001" else
                   worker3_b_in when worker_sel = "1010" else
                   worker4_b_in when worker_sel = "1011" else
                   worker5_b_in when worker_sel = "1100" else
                   worker6_b_in when worker_sel = "1101" else
                   worker7_b_in when worker_sel = "1110" else
                   worker8_b_in when worker_sel = "1111" else
                   (others => '0');
    hasher_c_in <= worker1_c_in when worker_sel = "1000" else
                   worker2_c_in when worker_sel = "1001" else
                   worker3_c_in when worker_sel = "1010" else
                   worker4_c_in when worker_sel = "1011" else
                   worker5_c_in when worker_sel = "1100" else
                   worker6_c_in when worker_sel = "1101" else
                   worker7_c_in when worker_sel = "1110" else
                   worker8_c_in when worker_sel = "1111" else
                   (others => '0');
    hasher_d_in <= worker1_d_in when worker_sel = "1000" else
                   worker2_d_in when worker_sel = "1001" else
                   worker3_d_in when worker_sel = "1010" else
                   worker4_d_in when worker_sel = "1011" else
                   worker5_d_in when worker_sel = "1100" else
                   worker6_d_in when worker_sel = "1101" else
                   worker7_d_in when worker_sel = "1110" else
                   worker8_d_in when worker_sel = "1111" else
                   (others => '0');
    hasher_e_in <= worker1_e_in when worker_sel = "1000" else
                   worker2_e_in when worker_sel = "1001" else
                   worker3_e_in when worker_sel = "1010" else
                   worker4_e_in when worker_sel = "1011" else
                   worker5_e_in when worker_sel = "1100" else
                   worker6_e_in when worker_sel = "1101" else
                   worker7_e_in when worker_sel = "1110" else
                   worker8_e_in when worker_sel = "1111" else
                   (others => '0');
    hasher_f_in <= worker1_f_in when worker_sel = "1000" else
                   worker2_f_in when worker_sel = "1001" else
                   worker3_f_in when worker_sel = "1010" else
                   worker4_f_in when worker_sel = "1011" else
                   worker5_f_in when worker_sel = "1100" else
                   worker6_f_in when worker_sel = "1101" else
                   worker7_f_in when worker_sel = "1110" else
                   worker8_f_in when worker_sel = "1111" else
                   (others => '0');
    hasher_g_in <= worker1_g_in when worker_sel = "1000" else
                   worker2_g_in when worker_sel = "1001" else
                   worker3_g_in when worker_sel = "1010" else
                   worker4_g_in when worker_sel = "1011" else
                   worker5_g_in when worker_sel = "1100" else
                   worker6_g_in when worker_sel = "1101" else
                   worker7_g_in when worker_sel = "1110" else
                   worker8_g_in when worker_sel = "1111" else
                   (others => '0');
    hasher_h_in <= worker1_h_in when worker_sel = "1000" else
                   worker2_h_in when worker_sel = "1001" else
                   worker3_h_in when worker_sel = "1010" else
                   worker4_h_in when worker_sel = "1011" else
                   worker5_h_in when worker_sel = "1100" else
                   worker6_h_in when worker_sel = "1101" else
                   worker7_h_in when worker_sel = "1110" else
                   worker8_h_in when worker_sel = "1111" else
                   (others => '0');
    hasher_msa_in <= worker1_msa_in when worker_sel = "1000" else
                     worker2_msa_in when worker_sel = "1001" else
                     worker3_msa_in when worker_sel = "1010" else
                     worker4_msa_in when worker_sel = "1011" else
                     worker5_msa_in when worker_sel = "1100" else
                     worker6_msa_in when worker_sel = "1101" else
                     worker7_msa_in when worker_sel = "1110" else
                     worker8_msa_in when worker_sel = "1111" else
                     (others => '0');
    hasher_rc_in <= worker1_rc_in when worker_sel = "1000" else
                    worker2_rc_in when worker_sel = "1001" else
                    worker3_rc_in when worker_sel = "1010" else
                    worker4_rc_in when worker_sel = "1011" else
                    worker5_rc_in when worker_sel = "1100" else
                    worker6_rc_in when worker_sel = "1101" else
                    worker7_rc_in when worker_sel = "1110" else
                    worker8_rc_in when worker_sel = "1111" else
                    (others => '0');

    -- map worker input signals
    worker1_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1000" else
                       (others => '0');
    worker2_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1001" else
                       (others => '0');
    worker3_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1010" else
                       (others => '0');
    worker4_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1011" else
                       (others => '0');
    worker5_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1100" else
                       (others => '0');
    worker6_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1101" else
                       (others => '0');
    worker7_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1110" else
                       (others => '0');
    worker8_data_in <= data_in when worker_sel = "0000" or
                                    worker_sel = "1111" else
                       (others => '0');

    worker1_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1000" else
                       (others => '0');
    worker2_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1001" else
                       (others => '0');
    worker3_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1010" else
                       (others => '0');
    worker4_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1011" else
                       (others => '0');
    worker5_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1100" else
                       (others => '0');
    worker6_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1101" else
                       (others => '0');
    worker7_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1110" else
                       (others => '0');
    worker8_stat_in <= status_in when worker_sel = "0000" or
                                      worker_sel = "1111" else
                       (others => '0');

    worker1_msa_new <= msa_val_new when worker_sel = "1000" else (others => '0');
    worker2_msa_new <= msa_val_new when worker_sel = "1001" else (others => '0');
    worker3_msa_new <= msa_val_new when worker_sel = "1010" else (others => '0');
    worker4_msa_new <= msa_val_new when worker_sel = "1011" else (others => '0');
    worker5_msa_new <= msa_val_new when worker_sel = "1100" else (others => '0');
    worker6_msa_new <= msa_val_new when worker_sel = "1101" else (others => '0');
    worker7_msa_new <= msa_val_new when worker_sel = "1110" else (others => '0');
    worker8_msa_new <= msa_val_new when worker_sel = "1111" else (others => '0');

    -- map worker output signals
    data_out <= worker1_data_out when worker_sel = "1000" else
                worker2_data_out when worker_sel = "1001" else
                worker3_data_out when worker_sel = "1010" else
                worker4_data_out when worker_sel = "1011" else
                worker5_data_out when worker_sel = "1100" else
                worker6_data_out when worker_sel = "1101" else
                worker7_data_out when worker_sel = "1110" else
                worker8_data_out when worker_sel = "1111" else
                (others => '0');
    status_out <= worker1_stat_out when worker_sel = "1000" else
                  worker2_stat_out when worker_sel = "1001" else
                  worker3_stat_out when worker_sel = "1010" else
                  worker4_stat_out when worker_sel = "1011" else
                  worker5_stat_out when worker_sel = "1100" else
                  worker6_stat_out when worker_sel = "1101" else
                  worker7_stat_out when worker_sel = "1110" else
                  worker8_stat_out when worker_sel = "1111" else
                  (others => '0');

    msa_val_i_16 <= worker1_msa_i16 when worker_sel = "1000" else
                    worker2_msa_i16 when worker_sel = "1001" else
                    worker3_msa_i16 when worker_sel = "1010" else
                    worker4_msa_i16 when worker_sel = "1100" else
                    worker5_msa_i16 when worker_sel = "1101" else
                    worker6_msa_i16 when worker_sel = "1110" else
                    worker7_msa_i16 when worker_sel = "1111" else
                    (others => '0');
    msa_val_i_15 <= worker1_msa_i15 when worker_sel = "1000" else
                    worker2_msa_i15 when worker_sel = "1001" else
                    worker3_msa_i15 when worker_sel = "1010" else
                    worker4_msa_i15 when worker_sel = "1100" else
                    worker5_msa_i15 when worker_sel = "1101" else
                    worker6_msa_i15 when worker_sel = "1110" else
                    worker7_msa_i15 when worker_sel = "1111" else
                    (others => '0');
    msa_val_i_7 <= worker1_msa_i7 when worker_sel = "1000" else
                    worker2_msa_i7 when worker_sel = "1001" else
                    worker3_msa_i7 when worker_sel = "1010" else
                    worker4_msa_i7 when worker_sel = "1100" else
                    worker5_msa_i7 when worker_sel = "1101" else
                    worker6_msa_i7 when worker_sel = "1110" else
                    worker7_msa_i7 when worker_sel = "1111" else
                    (others => '0');
    msa_val_i_2 <= worker1_msa_i2 when worker_sel = "1000" else
                    worker2_msa_i2 when worker_sel = "1001" else
                    worker3_msa_i2 when worker_sel = "1010" else
                    worker4_msa_i2 when worker_sel = "1100" else
                    worker5_msa_i2 when worker_sel = "1101" else
                    worker6_msa_i2 when worker_sel = "1110" else
                    worker7_msa_i2 when worker_sel = "1111" else
                    (others => '0');

    -- instantiate submodules
    hasher_crct : hash_circuity
        port map
        (
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

    worker1 : core
        port map
        (
            clk          => clk,

            data_in      => worker1_data_in,
            status_in    => worker1_stat_in,

            data_out     => worker1_data_out,
            status_out   => worker1_stat_out,

            msa_val_i_16 => worker1_msa_i16,
            msa_val_i_15 => worker1_msa_i15,
            msa_val_i_7  => worker1_msa_i7,
            msa_val_i_2  => worker1_msa_i2,
            msa_val_new  => worker1_msa_new,

            hash_a_val   => worker1_a_in,
            hash_b_val   => worker1_b_in,
            hash_c_val   => worker1_c_in,
            hash_d_val   => worker1_d_in,
            hash_e_val   => worker1_e_in,
            hash_f_val   => worker1_f_in,
            hash_g_val   => worker1_g_in,
            hash_h_val   => worker1_h_in,
            hash_msa_val => worker1_msa_in,
            hash_rc_val  => worker1_rc_in,

            hash_new_a   => worker1_new_a,
            hash_new_e   => worker1_new_e
        );
    worker2 : core
        port map
        (
            clk          => clk,

            data_in      => worker2_data_in,
            status_in    => worker2_stat_in,

            data_out     => worker2_data_out,
            status_out   => worker2_stat_out,

            msa_val_i_16 => worker2_msa_i16,
            msa_val_i_15 => worker2_msa_i15,
            msa_val_i_7  => worker2_msa_i7,
            msa_val_i_2  => worker2_msa_i2,
            msa_val_new  => worker2_msa_new,

            hash_a_val   => worker2_a_in,
            hash_b_val   => worker2_b_in,
            hash_c_val   => worker2_c_in,
            hash_d_val   => worker2_d_in,
            hash_e_val   => worker2_e_in,
            hash_f_val   => worker2_f_in,
            hash_g_val   => worker2_g_in,
            hash_h_val   => worker2_h_in,
            hash_msa_val => worker2_msa_in,
            hash_rc_val  => worker2_rc_in,

            hash_new_a   => worker2_new_a,
            hash_new_e   => worker2_new_e
        );
    worker3 : core
        port map
        (
            clk          => clk,

            data_in      => worker3_data_in,
            status_in    => worker3_stat_in,

            data_out     => worker3_data_out,
            status_out   => worker3_stat_out,

            msa_val_i_16 => worker3_msa_i16,
            msa_val_i_15 => worker3_msa_i15,
            msa_val_i_7  => worker3_msa_i7,
            msa_val_i_2  => worker3_msa_i2,
            msa_val_new  => worker3_msa_new,

            hash_a_val   => worker3_a_in,
            hash_b_val   => worker3_b_in,
            hash_c_val   => worker3_c_in,
            hash_d_val   => worker3_d_in,
            hash_e_val   => worker3_e_in,
            hash_f_val   => worker3_f_in,
            hash_g_val   => worker3_g_in,
            hash_h_val   => worker3_h_in,
            hash_msa_val => worker3_msa_in,
            hash_rc_val  => worker3_rc_in,

            hash_new_a   => worker3_new_a,
            hash_new_e   => worker3_new_e
        );
    worker4 : core
        port map
        (
            clk          => clk,

            data_in      => worker4_data_in,
            status_in    => worker4_stat_in,

            data_out     => worker4_data_out,
            status_out   => worker4_stat_out,

            msa_val_i_16 => worker4_msa_i16,
            msa_val_i_15 => worker4_msa_i15,
            msa_val_i_7  => worker4_msa_i7,
            msa_val_i_2  => worker4_msa_i2,
            msa_val_new  => worker4_msa_new,

            hash_a_val   => worker4_a_in,
            hash_b_val   => worker4_b_in,
            hash_c_val   => worker4_c_in,
            hash_d_val   => worker4_d_in,
            hash_e_val   => worker4_e_in,
            hash_f_val   => worker4_f_in,
            hash_g_val   => worker4_g_in,
            hash_h_val   => worker4_h_in,
            hash_msa_val => worker4_msa_in,
            hash_rc_val  => worker4_rc_in,

            hash_new_a   => worker4_new_a,
            hash_new_e   => worker4_new_e
        );
    worker5 : core
        port map
        (
            clk          => clk,

            data_in      => worker5_data_in,
            status_in    => worker5_stat_in,

            data_out     => worker5_data_out,
            status_out   => worker5_stat_out,

            msa_val_i_16 => worker5_msa_i16,
            msa_val_i_15 => worker5_msa_i15,
            msa_val_i_7  => worker5_msa_i7,
            msa_val_i_2  => worker5_msa_i2,
            msa_val_new  => worker5_msa_new,

            hash_a_val   => worker5_a_in,
            hash_b_val   => worker5_b_in,
            hash_c_val   => worker5_c_in,
            hash_d_val   => worker5_d_in,
            hash_e_val   => worker5_e_in,
            hash_f_val   => worker5_f_in,
            hash_g_val   => worker5_g_in,
            hash_h_val   => worker5_h_in,
            hash_msa_val => worker5_msa_in,
            hash_rc_val  => worker5_rc_in,

            hash_new_a   => worker5_new_a,
            hash_new_e   => worker5_new_e
        );
    worker6 : core
        port map
        (
            clk          => clk,

            data_in      => worker6_data_in,
            status_in    => worker6_stat_in,

            data_out     => worker6_data_out,
            status_out   => worker6_stat_out,

            msa_val_i_16 => worker6_msa_i16,
            msa_val_i_15 => worker6_msa_i15,
            msa_val_i_7  => worker6_msa_i7,
            msa_val_i_2  => worker6_msa_i2,
            msa_val_new  => worker6_msa_new,

            hash_a_val   => worker6_a_in,
            hash_b_val   => worker6_b_in,
            hash_c_val   => worker6_c_in,
            hash_d_val   => worker6_d_in,
            hash_e_val   => worker6_e_in,
            hash_f_val   => worker6_f_in,
            hash_g_val   => worker6_g_in,
            hash_h_val   => worker6_h_in,
            hash_msa_val => worker6_msa_in,
            hash_rc_val  => worker6_rc_in,

            hash_new_a   => worker6_new_a,
            hash_new_e   => worker6_new_e
        );
    worker7 : core
        port map
        (
            clk          => clk,

            data_in      => worker7_data_in,
            status_in    => worker7_stat_in,

            data_out     => worker7_data_out,
            status_out   => worker7_stat_out,

            msa_val_i_16 => worker7_msa_i16,
            msa_val_i_15 => worker7_msa_i15,
            msa_val_i_7  => worker7_msa_i7,
            msa_val_i_2  => worker7_msa_i2,
            msa_val_new  => worker7_msa_new,

            hash_a_val   => worker7_a_in,
            hash_b_val   => worker7_b_in,
            hash_c_val   => worker7_c_in,
            hash_d_val   => worker7_d_in,
            hash_e_val   => worker7_e_in,
            hash_f_val   => worker7_f_in,
            hash_g_val   => worker7_g_in,
            hash_h_val   => worker7_h_in,
            hash_msa_val => worker7_msa_in,
            hash_rc_val  => worker7_rc_in,

            hash_new_a   => worker7_new_a,
            hash_new_e   => worker7_new_e
        );
    worker8 : core
        port map
        (
            clk          => clk,

            data_in      => worker8_data_in,
            status_in    => worker8_stat_in,

            data_out     => worker8_data_out,
            status_out   => worker8_stat_out,

            msa_val_i_16 => worker8_msa_i16,
            msa_val_i_15 => worker8_msa_i15,
            msa_val_i_7  => worker8_msa_i7,
            msa_val_i_2  => worker8_msa_i2,
            msa_val_new  => worker8_msa_new,

            hash_a_val   => worker8_a_in,
            hash_b_val   => worker8_b_in,
            hash_c_val   => worker8_c_in,
            hash_d_val   => worker8_d_in,
            hash_e_val   => worker8_e_in,
            hash_f_val   => worker8_f_in,
            hash_g_val   => worker8_g_in,
            hash_h_val   => worker8_h_in,
            hash_msa_val => worker8_msa_in,
            hash_rc_val  => worker8_rc_in,

            hash_new_a   => worker8_new_a,
            hash_new_e   => worker8_new_e
        );

end behavioral;
