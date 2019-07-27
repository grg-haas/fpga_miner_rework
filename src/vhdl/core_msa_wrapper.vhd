library ieee;
use ieee.std_logic_1164.all;

entity core_msa_wrapper is
    port
    (
        clk        : in std_logic;

        wrk1_i_data  : in std_logic_vector(7 downto 0);
        wrk1_i_stat  : in std_logic_vector(5 downto 0);
        wrk1_o_data  : out std_logic_vector(7 downto 0);
        wrk1_o_stat  : out std_logic_vector(7 downto 0);

        wrk2_i_data  : in std_logic_vector(7 downto 0);
        wrk2_i_stat  : in std_logic_vector(5 downto 0);
        wrk2_o_data  : out std_logic_vector(7 downto 0);
        wrk2_o_stat  : out std_logic_vector(7 downto 0);

        wrk3_i_data  : in std_logic_vector(7 downto 0);
        wrk3_i_stat  : in std_logic_vector(5 downto 0);
        wrk3_o_data  : out std_logic_vector(7 downto 0);
        wrk3_o_stat  : out std_logic_vector(7 downto 0);

        wrk4_i_data  : in std_logic_vector(7 downto 0);
        wrk4_i_stat  : in std_logic_vector(5 downto 0);
        wrk4_o_data  : out std_logic_vector(7 downto 0);
        wrk4_o_stat  : out std_logic_vector(7 downto 0);

        wrk5_i_data  : in std_logic_vector(7 downto 0);
        wrk5_i_stat  : in std_logic_vector(5 downto 0);
        wrk5_o_data  : out std_logic_vector(7 downto 0);
        wrk5_o_stat  : out std_logic_vector(7 downto 0);

        wrk6_i_data  : in std_logic_vector(7 downto 0);
        wrk6_i_stat  : in std_logic_vector(5 downto 0);
        wrk6_o_data  : out std_logic_vector(7 downto 0);
        wrk6_o_stat  : out std_logic_vector(7 downto 0);

        wrk7_i_data  : in std_logic_vector(7 downto 0);
        wrk7_i_stat  : in std_logic_vector(5 downto 0);
        wrk7_o_data  : out std_logic_vector(7 downto 0);
        wrk7_o_stat  : out std_logic_vector(7 downto 0);

        wrk8_i_data  : in std_logic_vector(7 downto 0);
        wrk8_i_stat  : in std_logic_vector(5 downto 0);
        wrk8_o_data  : out std_logic_vector(7 downto 0);
        wrk8_o_stat  : out std_logic_vector(7 downto 0);

        wrk9_i_data  : in std_logic_vector(7 downto 0);
        wrk9_i_stat  : in std_logic_vector(5 downto 0);
        wrk9_o_data  : out std_logic_vector(7 downto 0);
        wrk9_o_stat  : out std_logic_vector(7 downto 0);

        wrk10_i_data  : in std_logic_vector(7 downto 0);
        wrk10_i_stat  : in std_logic_vector(5 downto 0);
        wrk10_o_data  : out std_logic_vector(7 downto 0);
        wrk10_o_stat  : out std_logic_vector(7 downto 0);

        wrk11_i_data  : in std_logic_vector(7 downto 0);
        wrk11_i_stat  : in std_logic_vector(5 downto 0);
        wrk11_o_data  : out std_logic_vector(7 downto 0);
        wrk11_o_stat  : out std_logic_vector(7 downto 0);

        wrk12_i_data  : in std_logic_vector(7 downto 0);
        wrk12_i_stat  : in std_logic_vector(5 downto 0);
        wrk12_o_data  : out std_logic_vector(7 downto 0);
        wrk12_o_stat  : out std_logic_vector(7 downto 0);

        wrk13_i_data  : in std_logic_vector(7 downto 0);
        wrk13_i_stat  : in std_logic_vector(5 downto 0);
        wrk13_o_data  : out std_logic_vector(7 downto 0);
        wrk13_o_stat  : out std_logic_vector(7 downto 0);

        wrk14_i_data  : in std_logic_vector(7 downto 0);
        wrk14_i_stat  : in std_logic_vector(5 downto 0);
        wrk14_o_data  : out std_logic_vector(7 downto 0);
        wrk14_o_stat  : out std_logic_vector(7 downto 0);

        wrk15_i_data  : in std_logic_vector(7 downto 0);
        wrk15_i_stat  : in std_logic_vector(5 downto 0);
        wrk15_o_data  : out std_logic_vector(7 downto 0);
        wrk15_o_stat  : out std_logic_vector(7 downto 0);

        wrk16_i_data  : in std_logic_vector(7 downto 0);
        wrk16_i_stat  : in std_logic_vector(5 downto 0);
        wrk16_o_data  : out std_logic_vector(7 downto 0);
        wrk16_o_stat  : out std_logic_vector(7 downto 0)
    );
end core_msa_wrapper;

architecture behavioral of core_msa_wrapper is
    component core_hash_wrapper is
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
    end component;

    component msa_extender is
        port
        (
            clk     : in std_logic;

            msa_i16 : in std_logic_vector(31 downto 0);
            msa_i15 : in std_logic_vector(31 downto 0);
            msa_i7  : in std_logic_vector(31 downto 0);
            msa_i2  : in std_logic_vector(31 downto 0);

            msa_out  :  out std_logic_vector(31 downto 0)
        );
    end component;

    -- signals for the msa extender
    signal msa_i16_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i15_in  : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i7_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_i2_in   : std_logic_vector(31 downto 0) := (others => '0');
    signal msa_new_out : std_logic_vector(31 downto 0) := (others => '0');

    -- signals for the core hash wrappers
    signal chw1_wrk1_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk1_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk1_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk1_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk1_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk2_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk2_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk2_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk2_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk2_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk3_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk3_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk3_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk3_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk3_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk4_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk4_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk4_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk4_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk4_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk5_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk5_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk5_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk5_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk5_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk6_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk6_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk6_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk6_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk6_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk7_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk7_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk7_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk7_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk7_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk8_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk8_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk8_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk8_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk8_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk1_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk1_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk1_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk1_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk1_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk2_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk2_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk2_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk2_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk2_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk3_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk3_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk3_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk3_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk3_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk4_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk4_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk4_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk4_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk4_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk5_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk5_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk5_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk5_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk5_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk6_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk6_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk6_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk6_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk6_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk7_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk7_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk7_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk7_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk7_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk8_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk8_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk8_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk8_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk8_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    -- signals for input/output buffers
    signal chw1_wrk1_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk2_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk3_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk4_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk5_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk6_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk7_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk8_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');

    signal chw1_wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    signal chw2_wrk1_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk2_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk3_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk4_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk5_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk6_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk7_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk8_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');

    signal chw2_wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    -- signals for scheduling MSA acces
    signal int_req_buf : std_logic_vector(15 downto 0) := (others => '0');
    signal int_ack_buf : std_logic_vector(15 downto 0) := (others => '0');
    signal int_sig_buf : std_logic_vector(15 downto 0) := (others => '0');
begin
    chw1_wrk1_i_stat_buf <= wrk1_i_stat(5 downto 4) & int_sig_buf(0) & wrk1_i_stat(3 downto 0);
    chw1_wrk2_i_stat_buf <= wrk2_i_stat(5 downto 4) & int_sig_buf(1) & wrk2_i_stat(3 downto 0);
    chw1_wrk3_i_stat_buf <= wrk3_i_stat(5 downto 4) & int_sig_buf(2) & wrk3_i_stat(3 downto 0);
    chw1_wrk4_i_stat_buf <= wrk4_i_stat(5 downto 4) & int_sig_buf(3) & wrk4_i_stat(3 downto 0);
    chw1_wrk5_i_stat_buf <= wrk5_i_stat(5 downto 4) & int_sig_buf(4) & wrk5_i_stat(3 downto 0);
    chw1_wrk6_i_stat_buf <= wrk6_i_stat(5 downto 4) & int_sig_buf(5) & wrk6_i_stat(3 downto 0);
    chw1_wrk7_i_stat_buf <= wrk7_i_stat(5 downto 4) & int_sig_buf(6) & wrk7_i_stat(3 downto 0);
    chw1_wrk8_i_stat_buf <= wrk8_i_stat(5 downto 4) & int_sig_buf(7) & wrk8_i_stat(3 downto 0);
    chw2_wrk1_i_stat_buf <= wrk9_i_stat(5 downto 4) & int_sig_buf(8) & wrk9_i_stat(3 downto 0);
    chw2_wrk2_i_stat_buf <= wrk10_i_stat(5 downto 4) & int_sig_buf(9) & wrk10_i_stat(3 downto 0);
    chw2_wrk3_i_stat_buf <= wrk11_i_stat(5 downto 4) & int_sig_buf(10) & wrk11_i_stat(3 downto 0);
    chw2_wrk4_i_stat_buf <= wrk12_i_stat(5 downto 4) & int_sig_buf(11) & wrk12_i_stat(3 downto 0);
    chw2_wrk5_i_stat_buf <= wrk13_i_stat(5 downto 4) & int_sig_buf(12) & wrk13_i_stat(3 downto 0);
    chw2_wrk6_i_stat_buf <= wrk14_i_stat(5 downto 4) & int_sig_buf(13) & wrk14_i_stat(3 downto 0);
    chw2_wrk7_i_stat_buf <= wrk15_i_stat(5 downto 4) & int_sig_buf(14) & wrk15_i_stat(3 downto 0);
    chw2_wrk8_i_stat_buf <= wrk16_i_stat(5 downto 4) & int_sig_buf(15) & wrk16_i_stat(3 downto 0);

    wrk1_o_stat <= chw1_wrk1_o_stat_buf;
    wrk2_o_stat <= chw1_wrk2_o_stat_buf;
    wrk3_o_stat <= chw1_wrk3_o_stat_buf;
    wrk4_o_stat <= chw1_wrk4_o_stat_buf;
    wrk5_o_stat <= chw1_wrk5_o_stat_buf;
    wrk6_o_stat <= chw1_wrk6_o_stat_buf;
    wrk7_o_stat <= chw1_wrk7_o_stat_buf;
    wrk8_o_stat <= chw1_wrk8_o_stat_buf;
    wrk9_o_stat <= chw2_wrk1_o_stat_buf;
    wrk10_o_stat <= chw2_wrk2_o_stat_buf;
    wrk11_o_stat <= chw2_wrk3_o_stat_buf;
    wrk12_o_stat <= chw2_wrk4_o_stat_buf;
    wrk13_o_stat <= chw2_wrk5_o_stat_buf;
    wrk14_o_stat <= chw2_wrk6_o_stat_buf;
    wrk15_o_stat <= chw2_wrk7_o_stat_buf;
    wrk16_o_stat <= chw2_wrk8_o_stat_buf;

    msa_xtnd : msa_extender
        port map
        (
            clk     => clk,
            
            msa_i16 => msa_i16_in,
            msa_i15 => msa_i15_in,
            msa_i7  => msa_i7_in,
            msa_i2  => msa_i2_in,
            msa_out => msa_new_out
        );

    chw1 : core_hash_wrapper
        port map
        (
            clk          => clk,

            wrk1_i_data  => wrk1_i_data,
            wrk1_i_stat  => chw1_wrk1_i_stat_buf,
            wrk1_o_data  => wrk1_o_data,
            wrk1_o_stat  => chw1_wrk1_o_stat_buf,
            wrk1_msa_i16 => chw1_wrk1_msa_i16,
            wrk1_msa_i15 => chw1_wrk1_msa_i15,
            wrk1_msa_i7  => chw1_wrk1_msa_i7,
            wrk1_msa_i2  => chw1_wrk1_msa_i2,
            wrk1_msa_new => chw1_wrk1_msa_new,

            wrk2_i_data  => wrk2_i_data,
            wrk2_i_stat  => chw1_wrk2_i_stat_buf,
            wrk2_o_data  => wrk2_o_data,
            wrk2_o_stat  => chw1_wrk2_o_stat_buf,
            wrk2_msa_i16 => chw1_wrk2_msa_i16,
            wrk2_msa_i15 => chw1_wrk2_msa_i15,
            wrk2_msa_i7  => chw1_wrk2_msa_i7,
            wrk2_msa_i2  => chw1_wrk2_msa_i2,
            wrk2_msa_new => chw1_wrk2_msa_new,

            wrk3_i_data  => wrk3_i_data,
            wrk3_i_stat  => chw1_wrk3_i_stat_buf,
            wrk3_o_data  => wrk3_o_data,
            wrk3_o_stat  => chw1_wrk3_o_stat_buf,
            wrk3_msa_i16 => chw1_wrk3_msa_i16,
            wrk3_msa_i15 => chw1_wrk3_msa_i15,
            wrk3_msa_i7  => chw1_wrk3_msa_i7,
            wrk3_msa_i2  => chw1_wrk3_msa_i2,
            wrk3_msa_new => chw1_wrk3_msa_new,

            wrk4_i_data  => wrk4_i_data,
            wrk4_i_stat  => chw1_wrk4_i_stat_buf,
            wrk4_o_data  => wrk4_o_data,
            wrk4_o_stat  => chw1_wrk4_o_stat_buf,
            wrk4_msa_i16 => chw1_wrk4_msa_i16,
            wrk4_msa_i15 => chw1_wrk4_msa_i15,
            wrk4_msa_i7  => chw1_wrk4_msa_i7,
            wrk4_msa_i2  => chw1_wrk4_msa_i2,
            wrk4_msa_new => chw1_wrk4_msa_new,

            wrk5_i_data  => wrk5_i_data,
            wrk5_i_stat  => chw1_wrk5_i_stat_buf,
            wrk5_o_data  => wrk5_o_data,
            wrk5_o_stat  => chw1_wrk5_o_stat_buf,
            wrk5_msa_i16 => chw1_wrk5_msa_i16,
            wrk5_msa_i15 => chw1_wrk5_msa_i15,
            wrk5_msa_i7  => chw1_wrk5_msa_i7,
            wrk5_msa_i2  => chw1_wrk5_msa_i2,
            wrk5_msa_new => chw1_wrk5_msa_new,

            wrk6_i_data  => wrk6_i_data,
            wrk6_i_stat  => chw1_wrk6_i_stat_buf,
            wrk6_o_data  => wrk6_o_data,
            wrk6_o_stat  => chw1_wrk6_o_stat_buf,
            wrk6_msa_i16 => chw1_wrk6_msa_i16,
            wrk6_msa_i15 => chw1_wrk6_msa_i15,
            wrk6_msa_i7  => chw1_wrk6_msa_i7,
            wrk6_msa_i2  => chw1_wrk6_msa_i2,
            wrk6_msa_new => chw1_wrk6_msa_new,

            wrk7_i_data  => wrk7_i_data,
            wrk7_i_stat  => chw1_wrk7_i_stat_buf,
            wrk7_o_data  => wrk7_o_data,
            wrk7_o_stat  => chw1_wrk7_o_stat_buf,
            wrk7_msa_i16 => chw1_wrk7_msa_i16,
            wrk7_msa_i15 => chw1_wrk7_msa_i15,
            wrk7_msa_i7  => chw1_wrk7_msa_i7,
            wrk7_msa_i2  => chw1_wrk7_msa_i2,
            wrk7_msa_new => chw1_wrk7_msa_new,

            wrk8_i_data  => wrk8_i_data,
            wrk8_i_stat  => chw1_wrk8_i_stat_buf,
            wrk8_o_data  => wrk8_o_data,
            wrk8_o_stat  => chw1_wrk8_o_stat_buf,
            wrk8_msa_i16 => chw1_wrk8_msa_i16,
            wrk8_msa_i15 => chw1_wrk8_msa_i15,
            wrk8_msa_i7  => chw1_wrk8_msa_i7,
            wrk8_msa_i2  => chw1_wrk8_msa_i2,
            wrk8_msa_new => chw1_wrk8_msa_new
        );
    chw2 : core_hash_wrapper
        port map
        (
            clk          => clk,

            wrk1_i_data  => wrk9_i_data,
            wrk1_i_stat  => chw2_wrk1_i_stat_buf,
            wrk1_o_data  => wrk9_o_data,
            wrk1_o_stat  => chw2_wrk1_o_stat_buf,
            wrk1_msa_i16 => chw2_wrk1_msa_i16,
            wrk1_msa_i15 => chw2_wrk1_msa_i15,
            wrk1_msa_i7  => chw2_wrk1_msa_i7,
            wrk1_msa_i2  => chw2_wrk1_msa_i2,
            wrk1_msa_new => chw2_wrk1_msa_new,

            wrk2_i_data  => wrk10_i_data,
            wrk2_i_stat  => chw2_wrk2_i_stat_buf,
            wrk2_o_data  => wrk10_o_data,
            wrk2_o_stat  => chw2_wrk2_o_stat_buf,
            wrk2_msa_i16 => chw2_wrk2_msa_i16,
            wrk2_msa_i15 => chw2_wrk2_msa_i15,
            wrk2_msa_i7  => chw2_wrk2_msa_i7,
            wrk2_msa_i2  => chw2_wrk2_msa_i2,
            wrk2_msa_new => chw2_wrk2_msa_new,

            wrk3_i_data  => wrk11_i_data,
            wrk3_i_stat  => chw2_wrk3_i_stat_buf,
            wrk3_o_data  => wrk11_o_data,
            wrk3_o_stat  => chw2_wrk3_o_stat_buf,
            wrk3_msa_i16 => chw2_wrk3_msa_i16,
            wrk3_msa_i15 => chw2_wrk3_msa_i15,
            wrk3_msa_i7  => chw2_wrk3_msa_i7,
            wrk3_msa_i2  => chw2_wrk3_msa_i2,
            wrk3_msa_new => chw2_wrk3_msa_new,

            wrk4_i_data  => wrk12_i_data,
            wrk4_i_stat  => chw2_wrk4_i_stat_buf,
            wrk4_o_data  => wrk12_o_data,
            wrk4_o_stat  => chw2_wrk4_o_stat_buf,
            wrk4_msa_i16 => chw2_wrk4_msa_i16,
            wrk4_msa_i15 => chw2_wrk4_msa_i15,
            wrk4_msa_i7  => chw2_wrk4_msa_i7,
            wrk4_msa_i2  => chw2_wrk4_msa_i2,
            wrk4_msa_new => chw2_wrk4_msa_new,

            wrk5_i_data  => wrk13_i_data,
            wrk5_i_stat  => chw2_wrk5_i_stat_buf,
            wrk5_o_data  => wrk13_o_data,
            wrk5_o_stat  => chw2_wrk5_o_stat_buf,
            wrk5_msa_i16 => chw2_wrk5_msa_i16,
            wrk5_msa_i15 => chw2_wrk5_msa_i15,
            wrk5_msa_i7  => chw2_wrk5_msa_i7,
            wrk5_msa_i2  => chw2_wrk5_msa_i2,
            wrk5_msa_new => chw2_wrk5_msa_new,

            wrk6_i_data  => wrk14_i_data,
            wrk6_i_stat  => chw2_wrk6_i_stat_buf,
            wrk6_o_data  => wrk14_o_data,
            wrk6_o_stat  => chw2_wrk6_o_stat_buf,
            wrk6_msa_i16 => chw2_wrk6_msa_i16,
            wrk6_msa_i15 => chw2_wrk6_msa_i15,
            wrk6_msa_i7  => chw2_wrk6_msa_i7,
            wrk6_msa_i2  => chw2_wrk6_msa_i2,
            wrk6_msa_new => chw2_wrk6_msa_new,

            wrk7_i_data  => wrk15_i_data,
            wrk7_i_stat  => chw2_wrk7_i_stat_buf,
            wrk7_o_data  => wrk15_o_data,
            wrk7_o_stat  => chw2_wrk7_o_stat_buf,
            wrk7_msa_i16 => chw2_wrk7_msa_i16,
            wrk7_msa_i15 => chw2_wrk7_msa_i15,
            wrk7_msa_i7  => chw2_wrk7_msa_i7,
            wrk7_msa_i2  => chw2_wrk7_msa_i2,
            wrk7_msa_new => chw2_wrk7_msa_new,

            wrk8_i_data  => wrk16_i_data,
            wrk8_i_stat  => chw2_wrk8_i_stat_buf,
            wrk8_o_data  => wrk16_o_data,
            wrk8_o_stat  => chw2_wrk8_o_stat_buf,
            wrk8_msa_i16 => chw2_wrk8_msa_i16,
            wrk8_msa_i15 => chw2_wrk8_msa_i15,
            wrk8_msa_i7  => chw2_wrk8_msa_i7,
            wrk8_msa_i2  => chw2_wrk8_msa_i2,
            wrk8_msa_new => chw2_wrk8_msa_new
        );

    int_req_buf <= chw1_wrk1_o_stat_buf(5) & chw1_wrk2_o_stat_buf(5) &
                   chw1_wrk3_o_stat_buf(5) & chw1_wrk4_o_stat_buf(5) &
                   chw1_wrk5_o_stat_buf(5) & chw1_wrk6_o_stat_buf(5) &
                   chw1_wrk7_o_stat_buf(5) & chw1_wrk8_o_stat_buf(5) &
                   chw2_wrk1_o_stat_buf(5) & chw2_wrk2_o_stat_buf(5) &
                   chw2_wrk3_o_stat_buf(5) & chw2_wrk4_o_stat_buf(5) &
                   chw2_wrk5_o_stat_buf(5) & chw2_wrk6_o_stat_buf(5) &
                   chw2_wrk7_o_stat_buf(5) & chw2_wrk8_o_stat_buf(5);
    int_ack_buf <= int_sig_buf and int_req_buf;

    msa_i16_in <= chw1_wrk1_msa_i16 when int_ack_buf = "0000000000000001" else
                  chw1_wrk2_msa_i16 when int_ack_buf = "0000000000000010" else
                  chw1_wrk3_msa_i16 when int_ack_buf = "0000000000000100" else
                  chw1_wrk4_msa_i16 when int_ack_buf = "0000000000001000" else
                  chw1_wrk5_msa_i16 when int_ack_buf = "0000000000010000" else
                  chw1_wrk6_msa_i16 when int_ack_buf = "0000000000100000" else
                  chw1_wrk7_msa_i16 when int_ack_buf = "0000000001000000" else
                  chw1_wrk8_msa_i16 when int_ack_buf = "0000000010000000" else
                  chw2_wrk1_msa_i16 when int_ack_buf = "0000000100000000" else
                  chw2_wrk2_msa_i16 when int_ack_buf = "0000001000000000" else
                  chw2_wrk3_msa_i16 when int_ack_buf = "0000010000000000" else
                  chw2_wrk4_msa_i16 when int_ack_buf = "0000100000000000" else
                  chw2_wrk5_msa_i16 when int_ack_buf = "0001000000000000" else
                  chw2_wrk6_msa_i16 when int_ack_buf = "0010000000000000" else
                  chw2_wrk7_msa_i16 when int_ack_buf = "0100000000000000" else
                  chw2_wrk8_msa_i16 when int_ack_buf = "1000000000000000" else
                  (others => '0');
    msa_i15_in <= chw1_wrk1_msa_i15 when int_ack_buf = "0000000000000001" else
                  chw1_wrk2_msa_i15 when int_ack_buf = "0000000000000010" else
                  chw1_wrk3_msa_i15 when int_ack_buf = "0000000000000100" else
                  chw1_wrk4_msa_i15 when int_ack_buf = "0000000000001000" else
                  chw1_wrk5_msa_i15 when int_ack_buf = "0000000000010000" else
                  chw1_wrk6_msa_i15 when int_ack_buf = "0000000000100000" else
                  chw1_wrk7_msa_i15 when int_ack_buf = "0000000001000000" else
                  chw1_wrk8_msa_i15 when int_ack_buf = "0000000010000000" else
                  chw2_wrk1_msa_i15 when int_ack_buf = "0000000100000000" else
                  chw2_wrk2_msa_i15 when int_ack_buf = "0000001000000000" else
                  chw2_wrk3_msa_i15 when int_ack_buf = "0000010000000000" else
                  chw2_wrk4_msa_i15 when int_ack_buf = "0000100000000000" else
                  chw2_wrk5_msa_i15 when int_ack_buf = "0001000000000000" else
                  chw2_wrk6_msa_i15 when int_ack_buf = "0010000000000000" else
                  chw2_wrk7_msa_i15 when int_ack_buf = "0100000000000000" else
                  chw2_wrk8_msa_i15 when int_ack_buf = "1000000000000000" else
                  (others => '0');
    msa_i7_in <= chw1_wrk1_msa_i7 when int_ack_buf = "0000000000000001" else
                 chw1_wrk2_msa_i7 when int_ack_buf = "0000000000000010" else
                 chw1_wrk3_msa_i7 when int_ack_buf = "0000000000000100" else
                 chw1_wrk4_msa_i7 when int_ack_buf = "0000000000001000" else
                 chw1_wrk5_msa_i7 when int_ack_buf = "0000000000010000" else
                 chw1_wrk6_msa_i7 when int_ack_buf = "0000000000100000" else
                 chw1_wrk7_msa_i7 when int_ack_buf = "0000000001000000" else
                 chw1_wrk8_msa_i7 when int_ack_buf = "0000000010000000" else
                 chw2_wrk1_msa_i7 when int_ack_buf = "0000000100000000" else
                 chw2_wrk2_msa_i7 when int_ack_buf = "0000001000000000" else
                 chw2_wrk3_msa_i7 when int_ack_buf = "0000010000000000" else
                 chw2_wrk4_msa_i7 when int_ack_buf = "0000100000000000" else
                 chw2_wrk5_msa_i7 when int_ack_buf = "0001000000000000" else
                 chw2_wrk6_msa_i7 when int_ack_buf = "0010000000000000" else
                 chw2_wrk7_msa_i7 when int_ack_buf = "0100000000000000" else
                 chw2_wrk8_msa_i7 when int_ack_buf = "1000000000000000" else
                 (others => '0');
    msa_i2_in <= chw1_wrk1_msa_i2 when int_ack_buf = "0000000000000001" else
                 chw1_wrk2_msa_i2 when int_ack_buf = "0000000000000010" else
                 chw1_wrk3_msa_i2 when int_ack_buf = "0000000000000100" else
                 chw1_wrk4_msa_i2 when int_ack_buf = "0000000000001000" else
                 chw1_wrk5_msa_i2 when int_ack_buf = "0000000000010000" else
                 chw1_wrk6_msa_i2 when int_ack_buf = "0000000000100000" else
                 chw1_wrk7_msa_i2 when int_ack_buf = "0000000001000000" else
                 chw1_wrk8_msa_i2 when int_ack_buf = "0000000010000000" else
                 chw2_wrk1_msa_i2 when int_ack_buf = "0000000100000000" else
                 chw2_wrk2_msa_i2 when int_ack_buf = "0000001000000000" else
                 chw2_wrk3_msa_i2 when int_ack_buf = "0000010000000000" else
                 chw2_wrk4_msa_i2 when int_ack_buf = "0000100000000000" else
                 chw2_wrk5_msa_i2 when int_ack_buf = "0001000000000000" else
                 chw2_wrk6_msa_i2 when int_ack_buf = "0010000000000000" else
                 chw2_wrk7_msa_i2 when int_ack_buf = "0100000000000000" else
                 chw2_wrk8_msa_i2 when int_ack_buf = "1000000000000000" else
                 (others => '0');

    chw1_wrk1_msa_new <= msa_new_out when int_ack_buf = "0000000000000001" else (others => '0');
    chw1_wrk2_msa_new <= msa_new_out when int_ack_buf = "0000000000000010" else (others => '0');
    chw1_wrk3_msa_new <= msa_new_out when int_ack_buf = "0000000000000100" else (others => '0');
    chw1_wrk4_msa_new <= msa_new_out when int_ack_buf = "0000000000001000" else (others => '0');
    chw1_wrk5_msa_new <= msa_new_out when int_ack_buf = "0000000000010000" else (others => '0');
    chw1_wrk6_msa_new <= msa_new_out when int_ack_buf = "0000000000100000" else (others => '0');
    chw1_wrk7_msa_new <= msa_new_out when int_ack_buf = "0000000001000000" else (others => '0');
    chw1_wrk8_msa_new <= msa_new_out when int_ack_buf = "0000000010000000" else (others => '0');
    chw2_wrk1_msa_new <= msa_new_out when int_ack_buf = "0000000100000000" else (others => '0');
    chw2_wrk2_msa_new <= msa_new_out when int_ack_buf = "0000001000000000" else (others => '0');
    chw2_wrk3_msa_new <= msa_new_out when int_ack_buf = "0000010000000000" else (others => '0');
    chw2_wrk4_msa_new <= msa_new_out when int_ack_buf = "0000100000000000" else (others => '0');
    chw2_wrk5_msa_new <= msa_new_out when int_ack_buf = "0001000000000000" else (others => '0');
    chw2_wrk6_msa_new <= msa_new_out when int_ack_buf = "0010000000000000" else (others => '0');
    chw2_wrk7_msa_new <= msa_new_out when int_ack_buf = "0100000000000000" else (others => '0');
    chw2_wrk8_msa_new <= msa_new_out when int_ack_buf = "1000000000000000" else (others => '0');

    schedule_msa_access : process(clk)
    begin
        if rising_edge(clk) then
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

            elsif int_req_buf(8) = '1' then
                int_sig_buf(8) <= '1';

            elsif int_req_buf(9) = '1' then
                int_sig_buf(9) <= '1';

            elsif int_req_buf(10) = '1' then
                int_sig_buf(10) <= '1';

            elsif int_req_buf(11) = '1' then
                int_sig_buf(11) <= '1';

            elsif int_req_buf(12) = '1' then
                int_sig_buf(12) <= '1';

            elsif int_req_buf(13) = '1' then
                int_sig_buf(13) <= '1';

            elsif int_req_buf(14) = '1' then
                int_sig_buf(14) <= '1';

            elsif int_req_buf(15) = '1' then
                int_sig_buf(15) <= '1';
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

            elsif int_ack_buf(8) = '1' then
                int_sig_buf(8) <= '0';

            elsif int_ack_buf(9) = '1' then
                int_sig_buf(9) <= '0';

            elsif int_ack_buf(10) = '1' then
                int_sig_buf(10) <= '0';

            elsif int_ack_buf(11) = '1' then
                int_sig_buf(11) <= '0';

            elsif int_ack_buf(12) = '1' then
                int_sig_buf(12) <= '0';

            elsif int_ack_buf(13) = '1' then
                int_sig_buf(13) <= '0';

            elsif int_ack_buf(14) = '1' then
                int_sig_buf(14) <= '0';

            elsif int_ack_buf(15) = '1' then
                int_sig_buf(15) <= '0';
            end if;
        end if;
    end process schedule_msa_access;
end behavioral;
