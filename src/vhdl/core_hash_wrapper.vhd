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
        wrk8_msa_new : in std_logic_vector(31 downto 0)
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
            clk          : in std_logic;

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

    -- status buffers
    signal wrk1_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk2_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk3_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk4_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk5_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk6_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk7_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk8_i_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    signal wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    -- signals for scheduling hash access
    signal int_req_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal int_ack_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal int_sig_buf : std_logic_vector(7 downto 0) := (others => '0');
begin
    wrk1_i_stat_buf <= wrk1_i_stat(6 downto 4) & int_sig_buf(0) & wrk1_i_stat(3 downto 0);
    wrk2_i_stat_buf <= wrk2_i_stat(6 downto 4) & int_sig_buf(1) & wrk2_i_stat(3 downto 0);
    wrk3_i_stat_buf <= wrk3_i_stat(6 downto 4) & int_sig_buf(2) & wrk3_i_stat(3 downto 0);
    wrk4_i_stat_buf <= wrk4_i_stat(6 downto 4) & int_sig_buf(3) & wrk4_i_stat(3 downto 0);
    wrk5_i_stat_buf <= wrk5_i_stat(6 downto 4) & int_sig_buf(4) & wrk5_i_stat(3 downto 0);
    wrk6_i_stat_buf <= wrk6_i_stat(6 downto 4) & int_sig_buf(5) & wrk6_i_stat(3 downto 0);
    wrk7_i_stat_buf <= wrk7_i_stat(6 downto 4) & int_sig_buf(6) & wrk7_i_stat(3 downto 0);
    wrk8_i_stat_buf <= wrk8_i_stat(6 downto 4) & int_sig_buf(7) & wrk8_i_stat(3 downto 0);

    wrk1_o_stat <= wrk1_o_stat_buf;
    wrk2_o_stat <= wrk2_o_stat_buf;
    wrk3_o_stat <= wrk3_o_stat_buf;
    wrk4_o_stat <= wrk4_o_stat_buf;
    wrk5_o_stat <= wrk5_o_stat_buf;
    wrk6_o_stat <= wrk6_o_stat_buf;
    wrk7_o_stat <= wrk7_o_stat_buf;
    wrk8_o_stat <= wrk8_o_stat_buf;

    -- instantiate submodules
    hasher_crct : hash_circuity
        port map
        (
            clk          => clk,
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

    int_req_buf <= wrk8_o_stat_buf(4) & wrk7_o_stat_buf(4) &
                   wrk6_o_stat_buf(4) & wrk5_o_stat_buf(4) &
                   wrk3_o_stat_buf(4) & wrk3_o_stat_buf(4) &
                   wrk2_o_stat_buf(4) & wrk1_o_stat_buf(4);
    int_ack_buf <= int_sig_buf and int_req_buf;

    hasher_a_in <= worker1_a_in when int_ack_buf = "00000001" else
                   worker2_a_in when int_ack_buf = "00000010" else
                   worker3_a_in when int_ack_buf = "00000100" else
                   worker4_a_in when int_ack_buf = "00001000" else
                   worker5_a_in when int_ack_buf = "00010000" else
                   worker6_a_in when int_ack_buf = "00100000" else
                   worker7_a_in when int_ack_buf = "01000000" else
                   worker8_a_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_b_in <= worker1_b_in when int_ack_buf = "00000001" else
                   worker2_b_in when int_ack_buf = "00000010" else
                   worker3_b_in when int_ack_buf = "00000100" else
                   worker4_b_in when int_ack_buf = "00001000" else
                   worker5_b_in when int_ack_buf = "00010000" else
                   worker6_b_in when int_ack_buf = "00100000" else
                   worker7_b_in when int_ack_buf = "01000000" else
                   worker8_b_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_c_in <= worker1_c_in when int_ack_buf = "00000001" else
                   worker2_c_in when int_ack_buf = "00000010" else
                   worker3_c_in when int_ack_buf = "00000100" else
                   worker4_c_in when int_ack_buf = "00001000" else
                   worker5_c_in when int_ack_buf = "00010000" else
                   worker6_c_in when int_ack_buf = "00100000" else
                   worker7_c_in when int_ack_buf = "01000000" else
                   worker8_c_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_d_in <= worker1_d_in when int_ack_buf = "00000001" else
                   worker2_d_in when int_ack_buf = "00000010" else
                   worker3_d_in when int_ack_buf = "00000100" else
                   worker4_d_in when int_ack_buf = "00001000" else
                   worker5_d_in when int_ack_buf = "00010000" else
                   worker6_d_in when int_ack_buf = "00100000" else
                   worker7_d_in when int_ack_buf = "01000000" else
                   worker8_d_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_e_in <= worker1_e_in when int_ack_buf = "00000001" else
                   worker2_e_in when int_ack_buf = "00000010" else
                   worker3_e_in when int_ack_buf = "00000100" else
                   worker4_e_in when int_ack_buf = "00001000" else
                   worker5_e_in when int_ack_buf = "00010000" else
                   worker6_e_in when int_ack_buf = "00100000" else
                   worker7_e_in when int_ack_buf = "01000000" else
                   worker8_e_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_f_in <= worker1_f_in when int_ack_buf = "00000001" else
                   worker2_f_in when int_ack_buf = "00000010" else
                   worker3_f_in when int_ack_buf = "00000100" else
                   worker4_f_in when int_ack_buf = "00001000" else
                   worker5_f_in when int_ack_buf = "00010000" else
                   worker6_f_in when int_ack_buf = "00100000" else
                   worker7_f_in when int_ack_buf = "01000000" else
                   worker8_f_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_g_in <= worker1_g_in when int_ack_buf = "00000001" else
                   worker2_g_in when int_ack_buf = "00000010" else
                   worker3_g_in when int_ack_buf = "00000100" else
                   worker4_g_in when int_ack_buf = "00001000" else
                   worker5_g_in when int_ack_buf = "00010000" else
                   worker6_g_in when int_ack_buf = "00100000" else
                   worker7_g_in when int_ack_buf = "01000000" else
                   worker8_g_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_h_in <= worker1_h_in when int_ack_buf = "00000001" else
                   worker2_h_in when int_ack_buf = "00000010" else
                   worker3_h_in when int_ack_buf = "00000100" else
                   worker4_h_in when int_ack_buf = "00001000" else
                   worker5_h_in when int_ack_buf = "00010000" else
                   worker6_h_in when int_ack_buf = "00100000" else
                   worker7_h_in when int_ack_buf = "01000000" else
                   worker8_h_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_msa_in <= worker1_msa_in when int_ack_buf = "00000001" else
                   worker2_msa_in when int_ack_buf = "00000010" else
                   worker3_msa_in when int_ack_buf = "00000100" else
                   worker4_msa_in when int_ack_buf = "00001000" else
                   worker5_msa_in when int_ack_buf = "00010000" else
                   worker6_msa_in when int_ack_buf = "00100000" else
                   worker7_msa_in when int_ack_buf = "01000000" else
                   worker8_msa_in when int_ack_buf = "10000000" else
                   (others => '0');
    hasher_rc_in <= worker1_rc_in when int_ack_buf = "00000001" else
                   worker2_rc_in when int_ack_buf = "00000010" else
                   worker3_rc_in when int_ack_buf = "00000100" else
                   worker4_rc_in when int_ack_buf = "00001000" else
                   worker5_rc_in when int_ack_buf = "00010000" else
                   worker6_rc_in when int_ack_buf = "00100000" else
                   worker7_rc_in when int_ack_buf = "01000000" else
                   worker8_rc_in when int_ack_buf = "10000000" else
                   (others => '0');

    worker1_new_a <= hasher_new_a when int_ack_buf = "00000001" else (others => '0');
    worker2_new_a <= hasher_new_a when int_ack_buf = "00000010" else (others => '0');
    worker3_new_a <= hasher_new_a when int_ack_buf = "00000100" else (others => '0');
    worker4_new_a <= hasher_new_a when int_ack_buf = "00001000" else (others => '0');
    worker5_new_a <= hasher_new_a when int_ack_buf = "00010000" else (others => '0');
    worker6_new_a <= hasher_new_a when int_ack_buf = "00100000" else (others => '0');
    worker7_new_a <= hasher_new_a when int_ack_buf = "01000000" else (others => '0');
    worker8_new_a <= hasher_new_a when int_ack_buf = "10000000" else (others => '0');

    worker1_new_e <= hasher_new_e when int_ack_buf = "00000001" else (others => '0');
    worker2_new_e <= hasher_new_e when int_ack_buf = "00000010" else (others => '0');
    worker3_new_e <= hasher_new_e when int_ack_buf = "00000100" else (others => '0');
    worker4_new_e <= hasher_new_e when int_ack_buf = "00001000" else (others => '0');
    worker5_new_e <= hasher_new_e when int_ack_buf = "00010000" else (others => '0');
    worker6_new_e <= hasher_new_e when int_ack_buf = "00100000" else (others => '0');
    worker7_new_e <= hasher_new_e when int_ack_buf = "01000000" else (others => '0');
    worker8_new_e <= hasher_new_e when int_ack_buf = "10000000" else (others => '0');

    schedule_hash_access : process(clk)
        variable toggle : std_logic := '0';
    begin
        if rising_edge(clk) then
            if toggle = '1' then
                if int_req_buf(0) = '1' then
                    int_sig_buf(0) <= '1';

                elsif int_req_buf(1) = '1' then
                    int_sig_buf(1) <= '1';

                elsif int_req_buf(2) = '1' then
                    int_sig_buf(2) <= '1';

                elsif int_req_buf(3) = '1' then
                    int_sig_buf(3) <= '1';

                elsif int_req_buf(4) = '1' then
                    int_sig_buf(4) <= '1';

                elsif int_req_buf(5) = '1' then
                    int_sig_buf(5) <= '1';

                elsif int_req_buf(6) = '1' then
                    int_sig_buf(6) <= '1';

                elsif int_req_buf(7) = '1' then
                    int_sig_buf(7) <= '1';

                end if;
            end if;

            if int_ack_buf(0) = '1' then
                int_sig_buf(0) <= '0';

            elsif int_ack_buf(1) = '1' then
                int_sig_buf(1) <= '0';

            elsif int_ack_buf(2) = '1' then
                int_sig_buf(2) <= '0';

            elsif int_ack_buf(3) = '1' then
                int_sig_buf(3) <= '0';

            elsif int_ack_buf(4) = '1' then
                int_sig_buf(4) <= '0';

            elsif int_ack_buf(5) = '1' then
                int_sig_buf(5) <= '0';

            elsif int_ack_buf(6) = '1' then
                int_sig_buf(6) <= '0';

            elsif int_ack_buf(7) = '1' then
                int_sig_buf(7) <= '0';

            end if;

            toggle := not toggle;
        end if;
    end process schedule_hash_access;
end behavioral;
