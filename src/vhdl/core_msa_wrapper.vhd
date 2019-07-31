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
        wrk16_o_stat  : out std_logic_vector(7 downto 0);

        wrk17_i_data  : in std_logic_vector(7 downto 0);
        wrk17_i_stat  : in std_logic_vector(5 downto 0);
        wrk17_o_data  : out std_logic_vector(7 downto 0);
        wrk17_o_stat  : out std_logic_vector(7 downto 0);

        wrk18_i_data  : in std_logic_vector(7 downto 0);
        wrk18_i_stat  : in std_logic_vector(5 downto 0);
        wrk18_o_data  : out std_logic_vector(7 downto 0);
        wrk18_o_stat  : out std_logic_vector(7 downto 0);

        wrk19_i_data  : in std_logic_vector(7 downto 0);
        wrk19_i_stat  : in std_logic_vector(5 downto 0);
        wrk19_o_data  : out std_logic_vector(7 downto 0);
        wrk19_o_stat  : out std_logic_vector(7 downto 0);

        wrk20_i_data  : in std_logic_vector(7 downto 0);
        wrk20_i_stat  : in std_logic_vector(5 downto 0);
        wrk20_o_data  : out std_logic_vector(7 downto 0);
        wrk20_o_stat  : out std_logic_vector(7 downto 0);

        wrk21_i_data  : in std_logic_vector(7 downto 0);
        wrk21_i_stat  : in std_logic_vector(5 downto 0);
        wrk21_o_data  : out std_logic_vector(7 downto 0);
        wrk21_o_stat  : out std_logic_vector(7 downto 0);

        wrk22_i_data  : in std_logic_vector(7 downto 0);
        wrk22_i_stat  : in std_logic_vector(5 downto 0);
        wrk22_o_data  : out std_logic_vector(7 downto 0);
        wrk22_o_stat  : out std_logic_vector(7 downto 0);

        wrk23_i_data  : in std_logic_vector(7 downto 0);
        wrk23_i_stat  : in std_logic_vector(5 downto 0);
        wrk23_o_data  : out std_logic_vector(7 downto 0);
        wrk23_o_stat  : out std_logic_vector(7 downto 0);

        wrk24_i_data  : in std_logic_vector(7 downto 0);
        wrk24_i_stat  : in std_logic_vector(5 downto 0);
        wrk24_o_data  : out std_logic_vector(7 downto 0);
        wrk24_o_stat  : out std_logic_vector(7 downto 0);

        wrk25_i_data  : in std_logic_vector(7 downto 0);
        wrk25_i_stat  : in std_logic_vector(5 downto 0);
        wrk25_o_data  : out std_logic_vector(7 downto 0);
        wrk25_o_stat  : out std_logic_vector(7 downto 0);

        wrk26_i_data  : in std_logic_vector(7 downto 0);
        wrk26_i_stat  : in std_logic_vector(5 downto 0);
        wrk26_o_data  : out std_logic_vector(7 downto 0);
        wrk26_o_stat  : out std_logic_vector(7 downto 0);

        wrk27_i_data  : in std_logic_vector(7 downto 0);
        wrk27_i_stat  : in std_logic_vector(5 downto 0);
        wrk27_o_data  : out std_logic_vector(7 downto 0);
        wrk27_o_stat  : out std_logic_vector(7 downto 0);

        wrk28_i_data  : in std_logic_vector(7 downto 0);
        wrk28_i_stat  : in std_logic_vector(5 downto 0);
        wrk28_o_data  : out std_logic_vector(7 downto 0);
        wrk28_o_stat  : out std_logic_vector(7 downto 0);

        wrk29_i_data  : in std_logic_vector(7 downto 0);
        wrk29_i_stat  : in std_logic_vector(5 downto 0);
        wrk29_o_data  : out std_logic_vector(7 downto 0);
        wrk29_o_stat  : out std_logic_vector(7 downto 0);

        wrk30_i_data  : in std_logic_vector(7 downto 0);
        wrk30_i_stat  : in std_logic_vector(5 downto 0);
        wrk30_o_data  : out std_logic_vector(7 downto 0);
        wrk30_o_stat  : out std_logic_vector(7 downto 0);

        wrk31_i_data  : in std_logic_vector(7 downto 0);
        wrk31_i_stat  : in std_logic_vector(5 downto 0);
        wrk31_o_data  : out std_logic_vector(7 downto 0);
        wrk31_o_stat  : out std_logic_vector(7 downto 0);

        wrk32_i_data  : in std_logic_vector(7 downto 0);
        wrk32_i_stat  : in std_logic_vector(5 downto 0);
        wrk32_o_data  : out std_logic_vector(7 downto 0);
        wrk32_o_stat  : out std_logic_vector(7 downto 0)
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
    end component;

    component msa_extender is
        port
        (
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

    signal chw1_wrk9_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk9_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk9_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk9_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk9_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk10_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk10_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk10_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk10_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk10_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk11_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk11_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk11_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk11_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk11_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk12_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk12_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk12_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk12_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk12_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk13_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk13_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk13_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk13_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk13_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk14_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk14_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk14_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk14_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk14_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk15_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk15_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk15_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk15_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk15_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw1_wrk16_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk16_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk16_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk16_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw1_wrk16_msa_new : std_logic_vector(31 downto 0) := (others => '0');

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

    signal chw2_wrk9_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk9_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk9_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk9_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk9_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk10_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk10_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk10_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk10_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk10_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk11_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk11_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk11_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk11_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk11_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk12_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk12_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk12_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk12_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk12_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk13_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk13_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk13_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk13_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk13_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk14_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk14_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk14_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk14_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk14_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk15_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk15_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk15_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk15_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk15_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    signal chw2_wrk16_msa_i16 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk16_msa_i15 : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk16_msa_i7  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk16_msa_i2  : std_logic_vector(31 downto 0) := (others => '0');
    signal chw2_wrk16_msa_new : std_logic_vector(31 downto 0) := (others => '0');

    -- signals for input/output buffers
    signal chw1_wrk1_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk2_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk3_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk4_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk5_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk6_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk7_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk8_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk9_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk10_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk11_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk12_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk13_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk14_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk15_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw1_wrk16_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');

    signal chw1_wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk9_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk10_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk11_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk12_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk13_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk14_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk15_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw1_wrk16_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    signal chw2_wrk1_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk2_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk3_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk4_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk5_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk6_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk7_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk8_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk9_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk10_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk11_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk12_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk13_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk14_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk15_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');
    signal chw2_wrk16_i_stat_buf : std_logic_vector(6 downto 0) := (others => '0');

    signal chw2_wrk1_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk2_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk3_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk4_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk5_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk6_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk7_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk8_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk9_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk10_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk11_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk12_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk13_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk14_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk15_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');
    signal chw2_wrk16_o_stat_buf : std_logic_vector(7 downto 0) := (others => '0');

    -- signals for scheduling MSA acces
    signal int_req_buf : std_logic_vector(31 downto 0) := (others => '0');
    signal int_ack_buf : std_logic_vector(31 downto 0) := (others => '0');
    signal int_sig_buf : std_logic_vector(31 downto 0) := (others => '0');
begin
    chw1_wrk1_i_stat_buf <= wrk1_i_stat(5 downto 4) & int_sig_buf(0) & wrk1_i_stat(3 downto 0);
    chw1_wrk2_i_stat_buf <= wrk2_i_stat(5 downto 4) & int_sig_buf(1) & wrk2_i_stat(3 downto 0);
    chw1_wrk3_i_stat_buf <= wrk3_i_stat(5 downto 4) & int_sig_buf(2) & wrk3_i_stat(3 downto 0);
    chw1_wrk4_i_stat_buf <= wrk4_i_stat(5 downto 4) & int_sig_buf(3) & wrk4_i_stat(3 downto 0);
    chw1_wrk5_i_stat_buf <= wrk5_i_stat(5 downto 4) & int_sig_buf(4) & wrk5_i_stat(3 downto 0);
    chw1_wrk6_i_stat_buf <= wrk6_i_stat(5 downto 4) & int_sig_buf(5) & wrk6_i_stat(3 downto 0);
    chw1_wrk7_i_stat_buf <= wrk7_i_stat(5 downto 4) & int_sig_buf(6) & wrk7_i_stat(3 downto 0);
    chw1_wrk8_i_stat_buf <= wrk8_i_stat(5 downto 4) & int_sig_buf(7) & wrk8_i_stat(3 downto 0);
    chw1_wrk9_i_stat_buf <= wrk9_i_stat(5 downto 4) & int_sig_buf(8) & wrk9_i_stat(3 downto 0);
    chw1_wrk10_i_stat_buf <= wrk10_i_stat(5 downto 4) & int_sig_buf(9) & wrk10_i_stat(3 downto 0);
    chw1_wrk11_i_stat_buf <= wrk11_i_stat(5 downto 4) & int_sig_buf(10) & wrk11_i_stat(3 downto 0);
    chw1_wrk12_i_stat_buf <= wrk12_i_stat(5 downto 4) & int_sig_buf(11) & wrk12_i_stat(3 downto 0);
    chw1_wrk13_i_stat_buf <= wrk13_i_stat(5 downto 4) & int_sig_buf(12) & wrk13_i_stat(3 downto 0);
    chw1_wrk14_i_stat_buf <= wrk14_i_stat(5 downto 4) & int_sig_buf(13) & wrk14_i_stat(3 downto 0);
    chw1_wrk15_i_stat_buf <= wrk15_i_stat(5 downto 4) & int_sig_buf(14) & wrk15_i_stat(3 downto 0);
    chw1_wrk16_i_stat_buf <= wrk16_i_stat(5 downto 4) & int_sig_buf(15) & wrk16_i_stat(3 downto 0);
    chw2_wrk1_i_stat_buf <= wrk17_i_stat(5 downto 4) & int_sig_buf(16) & wrk17_i_stat(3 downto 0);
    chw2_wrk2_i_stat_buf <= wrk18_i_stat(5 downto 4) & int_sig_buf(17) & wrk18_i_stat(3 downto 0);
    chw2_wrk3_i_stat_buf <= wrk19_i_stat(5 downto 4) & int_sig_buf(18) & wrk19_i_stat(3 downto 0);
    chw2_wrk4_i_stat_buf <= wrk20_i_stat(5 downto 4) & int_sig_buf(19) & wrk20_i_stat(3 downto 0);
    chw2_wrk5_i_stat_buf <= wrk21_i_stat(5 downto 4) & int_sig_buf(20) & wrk21_i_stat(3 downto 0);
    chw2_wrk6_i_stat_buf <= wrk22_i_stat(5 downto 4) & int_sig_buf(21) & wrk22_i_stat(3 downto 0);
    chw2_wrk7_i_stat_buf <= wrk23_i_stat(5 downto 4) & int_sig_buf(22) & wrk23_i_stat(3 downto 0);
    chw2_wrk8_i_stat_buf <= wrk24_i_stat(5 downto 4) & int_sig_buf(23) & wrk24_i_stat(3 downto 0);
    chw2_wrk9_i_stat_buf <= wrk25_i_stat(5 downto 4) & int_sig_buf(24) & wrk25_i_stat(3 downto 0);
    chw2_wrk10_i_stat_buf <= wrk26_i_stat(5 downto 4) & int_sig_buf(25) & wrk26_i_stat(3 downto 0);
    chw2_wrk11_i_stat_buf <= wrk27_i_stat(5 downto 4) & int_sig_buf(26) & wrk27_i_stat(3 downto 0);
    chw2_wrk12_i_stat_buf <= wrk28_i_stat(5 downto 4) & int_sig_buf(27) & wrk28_i_stat(3 downto 0);
    chw2_wrk13_i_stat_buf <= wrk29_i_stat(5 downto 4) & int_sig_buf(28) & wrk29_i_stat(3 downto 0);
    chw2_wrk14_i_stat_buf <= wrk30_i_stat(5 downto 4) & int_sig_buf(29) & wrk30_i_stat(3 downto 0);
    chw2_wrk15_i_stat_buf <= wrk31_i_stat(5 downto 4) & int_sig_buf(30) & wrk31_i_stat(3 downto 0);
    chw2_wrk16_i_stat_buf <= wrk32_i_stat(5 downto 4) & int_sig_buf(31) & wrk32_i_stat(3 downto 0);

    wrk1_o_stat <= chw1_wrk1_o_stat_buf;
    wrk2_o_stat <= chw1_wrk2_o_stat_buf;
    wrk3_o_stat <= chw1_wrk3_o_stat_buf;
    wrk4_o_stat <= chw1_wrk4_o_stat_buf;
    wrk5_o_stat <= chw1_wrk5_o_stat_buf;
    wrk6_o_stat <= chw1_wrk6_o_stat_buf;
    wrk7_o_stat <= chw1_wrk7_o_stat_buf;
    wrk8_o_stat <= chw1_wrk8_o_stat_buf;
    wrk9_o_stat <= chw1_wrk9_o_stat_buf;
    wrk10_o_stat <= chw1_wrk10_o_stat_buf;
    wrk11_o_stat <= chw1_wrk11_o_stat_buf;
    wrk12_o_stat <= chw1_wrk12_o_stat_buf;
    wrk13_o_stat <= chw1_wrk13_o_stat_buf;
    wrk14_o_stat <= chw1_wrk14_o_stat_buf;
    wrk15_o_stat <= chw1_wrk15_o_stat_buf;
    wrk16_o_stat <= chw1_wrk16_o_stat_buf;
    wrk17_o_stat <= chw2_wrk1_o_stat_buf;
    wrk18_o_stat <= chw2_wrk2_o_stat_buf;
    wrk19_o_stat <= chw2_wrk3_o_stat_buf;
    wrk20_o_stat <= chw2_wrk4_o_stat_buf;
    wrk21_o_stat <= chw2_wrk5_o_stat_buf;
    wrk22_o_stat <= chw2_wrk6_o_stat_buf;
    wrk23_o_stat <= chw2_wrk7_o_stat_buf;
    wrk24_o_stat <= chw2_wrk8_o_stat_buf;
    wrk25_o_stat <= chw2_wrk9_o_stat_buf;
    wrk26_o_stat <= chw2_wrk10_o_stat_buf;
    wrk27_o_stat <= chw2_wrk11_o_stat_buf;
    wrk28_o_stat <= chw2_wrk12_o_stat_buf;
    wrk29_o_stat <= chw2_wrk13_o_stat_buf;
    wrk30_o_stat <= chw2_wrk14_o_stat_buf;
    wrk31_o_stat <= chw2_wrk15_o_stat_buf;
    wrk32_o_stat <= chw2_wrk16_o_stat_buf;

    msa_xtnd : msa_extender
        port map
        (
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
            wrk8_msa_new => chw1_wrk8_msa_new,

            wrk9_i_data  => wrk9_i_data,
            wrk9_i_stat  => chw1_wrk9_i_stat_buf,
            wrk9_o_data  => wrk9_o_data,
            wrk9_o_stat  => chw1_wrk9_o_stat_buf,
            wrk9_msa_i16 => chw1_wrk9_msa_i16,
            wrk9_msa_i15 => chw1_wrk9_msa_i15,
            wrk9_msa_i7  => chw1_wrk9_msa_i7,
            wrk9_msa_i2  => chw1_wrk9_msa_i2,
            wrk9_msa_new => chw1_wrk9_msa_new,

            wrk10_i_data  => wrk10_i_data,
            wrk10_i_stat  => chw1_wrk10_i_stat_buf,
            wrk10_o_data  => wrk10_o_data,
            wrk10_o_stat  => chw1_wrk10_o_stat_buf,
            wrk10_msa_i16 => chw1_wrk10_msa_i16,
            wrk10_msa_i15 => chw1_wrk10_msa_i15,
            wrk10_msa_i7  => chw1_wrk10_msa_i7,
            wrk10_msa_i2  => chw1_wrk10_msa_i2,
            wrk10_msa_new => chw1_wrk10_msa_new,

            wrk11_i_data  => wrk11_i_data,
            wrk11_i_stat  => chw1_wrk11_i_stat_buf,
            wrk11_o_data  => wrk11_o_data,
            wrk11_o_stat  => chw1_wrk11_o_stat_buf,
            wrk11_msa_i16 => chw1_wrk11_msa_i16,
            wrk11_msa_i15 => chw1_wrk11_msa_i15,
            wrk11_msa_i7  => chw1_wrk11_msa_i7,
            wrk11_msa_i2  => chw1_wrk11_msa_i2,
            wrk11_msa_new => chw1_wrk11_msa_new,

            wrk12_i_data  => wrk12_i_data,
            wrk12_i_stat  => chw1_wrk12_i_stat_buf,
            wrk12_o_data  => wrk12_o_data,
            wrk12_o_stat  => chw1_wrk12_o_stat_buf,
            wrk12_msa_i16 => chw1_wrk12_msa_i16,
            wrk12_msa_i15 => chw1_wrk12_msa_i15,
            wrk12_msa_i7  => chw1_wrk12_msa_i7,
            wrk12_msa_i2  => chw1_wrk12_msa_i2,
            wrk12_msa_new => chw1_wrk12_msa_new,

            wrk13_i_data  => wrk13_i_data,
            wrk13_i_stat  => chw1_wrk13_i_stat_buf,
            wrk13_o_data  => wrk13_o_data,
            wrk13_o_stat  => chw1_wrk13_o_stat_buf,
            wrk13_msa_i16 => chw1_wrk13_msa_i16,
            wrk13_msa_i15 => chw1_wrk13_msa_i15,
            wrk13_msa_i7  => chw1_wrk13_msa_i7,
            wrk13_msa_i2  => chw1_wrk13_msa_i2,
            wrk13_msa_new => chw1_wrk13_msa_new,

            wrk14_i_data  => wrk14_i_data,
            wrk14_i_stat  => chw1_wrk14_i_stat_buf,
            wrk14_o_data  => wrk14_o_data,
            wrk14_o_stat  => chw1_wrk14_o_stat_buf,
            wrk14_msa_i16 => chw1_wrk14_msa_i16,
            wrk14_msa_i15 => chw1_wrk14_msa_i15,
            wrk14_msa_i7  => chw1_wrk14_msa_i7,
            wrk14_msa_i2  => chw1_wrk14_msa_i2,
            wrk14_msa_new => chw1_wrk14_msa_new,

            wrk15_i_data  => wrk15_i_data,
            wrk15_i_stat  => chw1_wrk15_i_stat_buf,
            wrk15_o_data  => wrk15_o_data,
            wrk15_o_stat  => chw1_wrk15_o_stat_buf,
            wrk15_msa_i16 => chw1_wrk15_msa_i16,
            wrk15_msa_i15 => chw1_wrk15_msa_i15,
            wrk15_msa_i7  => chw1_wrk15_msa_i7,
            wrk15_msa_i2  => chw1_wrk15_msa_i2,
            wrk15_msa_new => chw1_wrk15_msa_new,

            wrk16_i_data  => wrk16_i_data,
            wrk16_i_stat  => chw1_wrk16_i_stat_buf,
            wrk16_o_data  => wrk16_o_data,
            wrk16_o_stat  => chw1_wrk16_o_stat_buf,
            wrk16_msa_i16 => chw1_wrk16_msa_i16,
            wrk16_msa_i15 => chw1_wrk16_msa_i15,
            wrk16_msa_i7  => chw1_wrk16_msa_i7,
            wrk16_msa_i2  => chw1_wrk16_msa_i2,
            wrk16_msa_new => chw1_wrk16_msa_new
        );
    chw2 : core_hash_wrapper
        port map
        (
            clk          => clk,

            wrk1_i_data  => wrk17_i_data,
            wrk1_i_stat  => chw2_wrk1_i_stat_buf,
            wrk1_o_data  => wrk17_o_data,
            wrk1_o_stat  => chw2_wrk1_o_stat_buf,
            wrk1_msa_i16 => chw2_wrk1_msa_i16,
            wrk1_msa_i15 => chw2_wrk1_msa_i15,
            wrk1_msa_i7  => chw2_wrk1_msa_i7,
            wrk1_msa_i2  => chw2_wrk1_msa_i2,
            wrk1_msa_new => chw2_wrk1_msa_new,

            wrk2_i_data  => wrk18_i_data,
            wrk2_i_stat  => chw2_wrk2_i_stat_buf,
            wrk2_o_data  => wrk18_o_data,
            wrk2_o_stat  => chw2_wrk2_o_stat_buf,
            wrk2_msa_i16 => chw2_wrk2_msa_i16,
            wrk2_msa_i15 => chw2_wrk2_msa_i15,
            wrk2_msa_i7  => chw2_wrk2_msa_i7,
            wrk2_msa_i2  => chw2_wrk2_msa_i2,
            wrk2_msa_new => chw2_wrk2_msa_new,

            wrk3_i_data  => wrk19_i_data,
            wrk3_i_stat  => chw2_wrk3_i_stat_buf,
            wrk3_o_data  => wrk19_o_data,
            wrk3_o_stat  => chw2_wrk3_o_stat_buf,
            wrk3_msa_i16 => chw2_wrk3_msa_i16,
            wrk3_msa_i15 => chw2_wrk3_msa_i15,
            wrk3_msa_i7  => chw2_wrk3_msa_i7,
            wrk3_msa_i2  => chw2_wrk3_msa_i2,
            wrk3_msa_new => chw2_wrk3_msa_new,

            wrk4_i_data  => wrk20_i_data,
            wrk4_i_stat  => chw2_wrk4_i_stat_buf,
            wrk4_o_data  => wrk20_o_data,
            wrk4_o_stat  => chw2_wrk4_o_stat_buf,
            wrk4_msa_i16 => chw2_wrk4_msa_i16,
            wrk4_msa_i15 => chw2_wrk4_msa_i15,
            wrk4_msa_i7  => chw2_wrk4_msa_i7,
            wrk4_msa_i2  => chw2_wrk4_msa_i2,
            wrk4_msa_new => chw2_wrk4_msa_new,

            wrk5_i_data  => wrk21_i_data,
            wrk5_i_stat  => chw2_wrk5_i_stat_buf,
            wrk5_o_data  => wrk21_o_data,
            wrk5_o_stat  => chw2_wrk5_o_stat_buf,
            wrk5_msa_i16 => chw2_wrk5_msa_i16,
            wrk5_msa_i15 => chw2_wrk5_msa_i15,
            wrk5_msa_i7  => chw2_wrk5_msa_i7,
            wrk5_msa_i2  => chw2_wrk5_msa_i2,
            wrk5_msa_new => chw2_wrk5_msa_new,

            wrk6_i_data  => wrk22_i_data,
            wrk6_i_stat  => chw2_wrk6_i_stat_buf,
            wrk6_o_data  => wrk22_o_data,
            wrk6_o_stat  => chw2_wrk6_o_stat_buf,
            wrk6_msa_i16 => chw2_wrk6_msa_i16,
            wrk6_msa_i15 => chw2_wrk6_msa_i15,
            wrk6_msa_i7  => chw2_wrk6_msa_i7,
            wrk6_msa_i2  => chw2_wrk6_msa_i2,
            wrk6_msa_new => chw2_wrk6_msa_new,

            wrk7_i_data  => wrk23_i_data,
            wrk7_i_stat  => chw2_wrk7_i_stat_buf,
            wrk7_o_data  => wrk23_o_data,
            wrk7_o_stat  => chw2_wrk7_o_stat_buf,
            wrk7_msa_i16 => chw2_wrk7_msa_i16,
            wrk7_msa_i15 => chw2_wrk7_msa_i15,
            wrk7_msa_i7  => chw2_wrk7_msa_i7,
            wrk7_msa_i2  => chw2_wrk7_msa_i2,
            wrk7_msa_new => chw2_wrk7_msa_new,

            wrk8_i_data  => wrk24_i_data,
            wrk8_i_stat  => chw2_wrk8_i_stat_buf,
            wrk8_o_data  => wrk24_o_data,
            wrk8_o_stat  => chw2_wrk8_o_stat_buf,
            wrk8_msa_i16 => chw2_wrk8_msa_i16,
            wrk8_msa_i15 => chw2_wrk8_msa_i15,
            wrk8_msa_i7  => chw2_wrk8_msa_i7,
            wrk8_msa_i2  => chw2_wrk8_msa_i2,
            wrk8_msa_new => chw2_wrk8_msa_new,

            wrk9_i_data  => wrk25_i_data,
            wrk9_i_stat  => chw2_wrk9_i_stat_buf,
            wrk9_o_data  => wrk25_o_data,
            wrk9_o_stat  => chw2_wrk9_o_stat_buf,
            wrk9_msa_i16 => chw2_wrk9_msa_i16,
            wrk9_msa_i15 => chw2_wrk9_msa_i15,
            wrk9_msa_i7  => chw2_wrk9_msa_i7,
            wrk9_msa_i2  => chw2_wrk9_msa_i2,
            wrk9_msa_new => chw2_wrk9_msa_new,

            wrk10_i_data  => wrk26_i_data,
            wrk10_i_stat  => chw2_wrk10_i_stat_buf,
            wrk10_o_data  => wrk26_o_data,
            wrk10_o_stat  => chw2_wrk10_o_stat_buf,
            wrk10_msa_i16 => chw2_wrk10_msa_i16,
            wrk10_msa_i15 => chw2_wrk10_msa_i15,
            wrk10_msa_i7  => chw2_wrk10_msa_i7,
            wrk10_msa_i2  => chw2_wrk10_msa_i2,
            wrk10_msa_new => chw2_wrk10_msa_new,

            wrk11_i_data  => wrk27_i_data,
            wrk11_i_stat  => chw2_wrk11_i_stat_buf,
            wrk11_o_data  => wrk27_o_data,
            wrk11_o_stat  => chw2_wrk11_o_stat_buf,
            wrk11_msa_i16 => chw2_wrk11_msa_i16,
            wrk11_msa_i15 => chw2_wrk11_msa_i15,
            wrk11_msa_i7  => chw2_wrk11_msa_i7,
            wrk11_msa_i2  => chw2_wrk11_msa_i2,
            wrk11_msa_new => chw2_wrk11_msa_new,

            wrk12_i_data  => wrk28_i_data,
            wrk12_i_stat  => chw2_wrk12_i_stat_buf,
            wrk12_o_data  => wrk28_o_data,
            wrk12_o_stat  => chw2_wrk12_o_stat_buf,
            wrk12_msa_i16 => chw2_wrk12_msa_i16,
            wrk12_msa_i15 => chw2_wrk12_msa_i15,
            wrk12_msa_i7  => chw2_wrk12_msa_i7,
            wrk12_msa_i2  => chw2_wrk12_msa_i2,
            wrk12_msa_new => chw2_wrk12_msa_new,

            wrk13_i_data  => wrk29_i_data,
            wrk13_i_stat  => chw2_wrk13_i_stat_buf,
            wrk13_o_data  => wrk29_o_data,
            wrk13_o_stat  => chw2_wrk13_o_stat_buf,
            wrk13_msa_i16 => chw2_wrk13_msa_i16,
            wrk13_msa_i15 => chw2_wrk13_msa_i15,
            wrk13_msa_i7  => chw2_wrk13_msa_i7,
            wrk13_msa_i2  => chw2_wrk13_msa_i2,
            wrk13_msa_new => chw2_wrk13_msa_new,

            wrk14_i_data  => wrk30_i_data,
            wrk14_i_stat  => chw2_wrk14_i_stat_buf,
            wrk14_o_data  => wrk30_o_data,
            wrk14_o_stat  => chw2_wrk14_o_stat_buf,
            wrk14_msa_i16 => chw2_wrk14_msa_i16,
            wrk14_msa_i15 => chw2_wrk14_msa_i15,
            wrk14_msa_i7  => chw2_wrk14_msa_i7,
            wrk14_msa_i2  => chw2_wrk14_msa_i2,
            wrk14_msa_new => chw2_wrk14_msa_new,

            wrk15_i_data  => wrk31_i_data,
            wrk15_i_stat  => chw2_wrk15_i_stat_buf,
            wrk15_o_data  => wrk31_o_data,
            wrk15_o_stat  => chw2_wrk15_o_stat_buf,
            wrk15_msa_i16 => chw2_wrk15_msa_i16,
            wrk15_msa_i15 => chw2_wrk15_msa_i15,
            wrk15_msa_i7  => chw2_wrk15_msa_i7,
            wrk15_msa_i2  => chw2_wrk15_msa_i2,
            wrk15_msa_new => chw2_wrk15_msa_new,

            wrk16_i_data  => wrk32_i_data,
            wrk16_i_stat  => chw2_wrk16_i_stat_buf,
            wrk16_o_data  => wrk32_o_data,
            wrk16_o_stat  => chw2_wrk16_o_stat_buf,
            wrk16_msa_i16 => chw2_wrk16_msa_i16,
            wrk16_msa_i15 => chw2_wrk16_msa_i15,
            wrk16_msa_i7  => chw2_wrk16_msa_i7,
            wrk16_msa_i2  => chw2_wrk16_msa_i2,
            wrk16_msa_new => chw2_wrk16_msa_new
        );

    int_req_buf <= chw2_wrk16_o_stat_buf(5) & chw2_wrk15_o_stat_buf(5) &
                   chw2_wrk14_o_stat_buf(5) & chw2_wrk13_o_stat_buf(5) &
                   chw2_wrk12_o_stat_buf(5) & chw2_wrk11_o_stat_buf(5) &
                   chw2_wrk10_o_stat_buf(5) & chw2_wrk9_o_stat_buf(5) &
                   chw2_wrk8_o_stat_buf(5) & chw2_wrk7_o_stat_buf(5) &
                   chw2_wrk6_o_stat_buf(5) & chw2_wrk5_o_stat_buf(5) &
                   chw2_wrk4_o_stat_buf(5) & chw2_wrk3_o_stat_buf(5) &
                   chw2_wrk2_o_stat_buf(5) & chw2_wrk1_o_stat_buf(5) &
                   chw1_wrk16_o_stat_buf(5) & chw1_wrk15_o_stat_buf(5) &
                   chw1_wrk14_o_stat_buf(5) & chw1_wrk13_o_stat_buf(5) &
                   chw1_wrk12_o_stat_buf(5) & chw1_wrk11_o_stat_buf(5) &
                   chw1_wrk10_o_stat_buf(5) & chw1_wrk9_o_stat_buf(5) &
                   chw1_wrk8_o_stat_buf(5) & chw1_wrk7_o_stat_buf(5) &
                   chw1_wrk6_o_stat_buf(5) & chw1_wrk5_o_stat_buf(5) &
                   chw1_wrk4_o_stat_buf(5) & chw1_wrk3_o_stat_buf(5) &
                   chw1_wrk2_o_stat_buf(5) & chw1_wrk1_o_stat_buf(5);
    int_ack_buf <= int_sig_buf and int_req_buf;

    msa_i16_in <= chw1_wrk1_msa_i16 when int_ack_buf = "00000000000000000000000000000001" else
                  chw1_wrk2_msa_i16 when int_ack_buf = "00000000000000000000000000000010" else
                  chw1_wrk3_msa_i16 when int_ack_buf = "00000000000000000000000000000100" else
                  chw1_wrk4_msa_i16 when int_ack_buf = "00000000000000000000000000001000" else
                  chw1_wrk5_msa_i16 when int_ack_buf = "00000000000000000000000000010000" else
                  chw1_wrk6_msa_i16 when int_ack_buf = "00000000000000000000000000100000" else
                  chw1_wrk7_msa_i16 when int_ack_buf = "00000000000000000000000001000000" else
                  chw1_wrk8_msa_i16 when int_ack_buf = "00000000000000000000000010000000" else
                  chw1_wrk9_msa_i16 when int_ack_buf = "00000000000000000000000100000000" else
                  chw1_wrk10_msa_i16 when int_ack_buf = "00000000000000000000001000000000" else
                  chw1_wrk11_msa_i16 when int_ack_buf = "00000000000000000000010000000000" else
                  chw1_wrk12_msa_i16 when int_ack_buf = "00000000000000000000100000000000" else
                  chw1_wrk13_msa_i16 when int_ack_buf = "00000000000000000001000000000000" else
                  chw1_wrk14_msa_i16 when int_ack_buf = "00000000000000000010000000000000" else
                  chw1_wrk15_msa_i16 when int_ack_buf = "00000000000000000100000000000000" else
                  chw1_wrk16_msa_i16 when int_ack_buf = "00000000000000001000000000000000" else
                  chw1_wrk1_msa_i16 when int_ack_buf = "00000000000000000000000000000001" else
                  chw2_wrk2_msa_i16 when int_ack_buf = "00000000000000100000000000000000" else
                  chw2_wrk3_msa_i16 when int_ack_buf = "00000000000001000000000000000000" else
                  chw2_wrk4_msa_i16 when int_ack_buf = "00000000000010000000000000000000" else
                  chw2_wrk5_msa_i16 when int_ack_buf = "00000000000100000000000000000000" else
                  chw2_wrk6_msa_i16 when int_ack_buf = "00000000001000000000000000000000" else
                  chw2_wrk7_msa_i16 when int_ack_buf = "00000000010000000000000000000000" else
                  chw2_wrk8_msa_i16 when int_ack_buf = "00000000100000000000000000000000" else
                  chw2_wrk9_msa_i16 when int_ack_buf = "00000001000000000000000000000000" else
                  chw2_wrk10_msa_i16 when int_ack_buf = "00000010000000000000000000000000" else
                  chw2_wrk11_msa_i16 when int_ack_buf = "00000100000000000000000000000000" else
                  chw2_wrk12_msa_i16 when int_ack_buf = "00001000000000000000000000000000" else
                  chw2_wrk13_msa_i16 when int_ack_buf = "00010000000000000000000000000000" else
                  chw2_wrk14_msa_i16 when int_ack_buf = "00100000000000000000000000000000" else
                  chw2_wrk15_msa_i16 when int_ack_buf = "01000000000000000000000000000000" else
                  chw2_wrk16_msa_i16 when int_ack_buf = "10000000000000000000000000000000" else
                  (others => '0');
    msa_i15_in <= chw1_wrk1_msa_i15 when int_ack_buf = "00000000000000000000000000000001" else
                  chw1_wrk2_msa_i15 when int_ack_buf = "00000000000000000000000000000010" else
                  chw1_wrk3_msa_i15 when int_ack_buf = "00000000000000000000000000000100" else
                  chw1_wrk4_msa_i15 when int_ack_buf = "00000000000000000000000000001000" else
                  chw1_wrk5_msa_i15 when int_ack_buf = "00000000000000000000000000010000" else
                  chw1_wrk6_msa_i15 when int_ack_buf = "00000000000000000000000000100000" else
                  chw1_wrk7_msa_i15 when int_ack_buf = "00000000000000000000000001000000" else
                  chw1_wrk8_msa_i15 when int_ack_buf = "00000000000000000000000010000000" else
                  chw1_wrk9_msa_i15 when int_ack_buf = "00000000000000000000000100000000" else
                  chw1_wrk10_msa_i15 when int_ack_buf = "00000000000000000000001000000000" else
                  chw1_wrk11_msa_i15 when int_ack_buf = "00000000000000000000010000000000" else
                  chw1_wrk12_msa_i15 when int_ack_buf = "00000000000000000000100000000000" else
                  chw1_wrk13_msa_i15 when int_ack_buf = "00000000000000000001000000000000" else
                  chw1_wrk14_msa_i15 when int_ack_buf = "00000000000000000010000000000000" else
                  chw1_wrk15_msa_i15 when int_ack_buf = "00000000000000000100000000000000" else
                  chw1_wrk16_msa_i15 when int_ack_buf = "00000000000000001000000000000000" else
                  chw1_wrk1_msa_i15 when int_ack_buf = "00000000000000000000000000000001" else
                  chw2_wrk2_msa_i15 when int_ack_buf = "00000000000000100000000000000000" else
                  chw2_wrk3_msa_i15 when int_ack_buf = "00000000000001000000000000000000" else
                  chw2_wrk4_msa_i15 when int_ack_buf = "00000000000010000000000000000000" else
                  chw2_wrk5_msa_i15 when int_ack_buf = "00000000000100000000000000000000" else
                  chw2_wrk6_msa_i15 when int_ack_buf = "00000000001000000000000000000000" else
                  chw2_wrk7_msa_i15 when int_ack_buf = "00000000010000000000000000000000" else
                  chw2_wrk8_msa_i15 when int_ack_buf = "00000000100000000000000000000000" else
                  chw2_wrk9_msa_i15 when int_ack_buf = "00000001000000000000000000000000" else
                  chw2_wrk10_msa_i15 when int_ack_buf = "00000010000000000000000000000000" else
                  chw2_wrk11_msa_i15 when int_ack_buf = "00000100000000000000000000000000" else
                  chw2_wrk12_msa_i15 when int_ack_buf = "00001000000000000000000000000000" else
                  chw2_wrk13_msa_i15 when int_ack_buf = "00010000000000000000000000000000" else
                  chw2_wrk14_msa_i15 when int_ack_buf = "00100000000000000000000000000000" else
                  chw2_wrk15_msa_i15 when int_ack_buf = "01000000000000000000000000000000" else
                  chw2_wrk16_msa_i15 when int_ack_buf = "10000000000000000000000000000000" else
                  (others => '0');
    msa_i7_in <= chw1_wrk1_msa_i7 when int_ack_buf = "00000000000000000000000000000001" else
                  chw1_wrk2_msa_i7 when int_ack_buf = "00000000000000000000000000000010" else
                  chw1_wrk3_msa_i7 when int_ack_buf = "00000000000000000000000000000100" else
                  chw1_wrk4_msa_i7 when int_ack_buf = "00000000000000000000000000001000" else
                  chw1_wrk5_msa_i7 when int_ack_buf = "00000000000000000000000000010000" else
                  chw1_wrk6_msa_i7 when int_ack_buf = "00000000000000000000000000100000" else
                  chw1_wrk7_msa_i7 when int_ack_buf = "00000000000000000000000001000000" else
                  chw1_wrk8_msa_i7 when int_ack_buf = "00000000000000000000000010000000" else
                  chw1_wrk9_msa_i7 when int_ack_buf = "00000000000000000000000100000000" else
                  chw1_wrk10_msa_i7 when int_ack_buf = "00000000000000000000001000000000" else
                  chw1_wrk11_msa_i7 when int_ack_buf = "00000000000000000000010000000000" else
                  chw1_wrk12_msa_i7 when int_ack_buf = "00000000000000000000100000000000" else
                  chw1_wrk13_msa_i7 when int_ack_buf = "00000000000000000001000000000000" else
                  chw1_wrk14_msa_i7 when int_ack_buf = "00000000000000000010000000000000" else
                  chw1_wrk15_msa_i7 when int_ack_buf = "00000000000000000100000000000000" else
                  chw1_wrk16_msa_i7 when int_ack_buf = "00000000000000001000000000000000" else
                  chw1_wrk1_msa_i7 when int_ack_buf = "00000000000000000000000000000001" else
                  chw2_wrk2_msa_i7 when int_ack_buf = "00000000000000100000000000000000" else
                  chw2_wrk3_msa_i7 when int_ack_buf = "00000000000001000000000000000000" else
                  chw2_wrk4_msa_i7 when int_ack_buf = "00000000000010000000000000000000" else
                  chw2_wrk5_msa_i7 when int_ack_buf = "00000000000100000000000000000000" else
                  chw2_wrk6_msa_i7 when int_ack_buf = "00000000001000000000000000000000" else
                  chw2_wrk7_msa_i7 when int_ack_buf = "00000000010000000000000000000000" else
                  chw2_wrk8_msa_i7 when int_ack_buf = "00000000100000000000000000000000" else
                  chw2_wrk9_msa_i7 when int_ack_buf = "00000001000000000000000000000000" else
                  chw2_wrk10_msa_i7 when int_ack_buf = "00000010000000000000000000000000" else
                  chw2_wrk11_msa_i7 when int_ack_buf = "00000100000000000000000000000000" else
                  chw2_wrk12_msa_i7 when int_ack_buf = "00001000000000000000000000000000" else
                  chw2_wrk13_msa_i7 when int_ack_buf = "00010000000000000000000000000000" else
                  chw2_wrk14_msa_i7 when int_ack_buf = "00100000000000000000000000000000" else
                  chw2_wrk15_msa_i7 when int_ack_buf = "01000000000000000000000000000000" else
                  chw2_wrk16_msa_i7 when int_ack_buf = "10000000000000000000000000000000" else
                  (others => '0');
    msa_i2_in <= chw1_wrk1_msa_i2 when int_ack_buf = "00000000000000000000000000000001" else
                  chw1_wrk2_msa_i2 when int_ack_buf = "00000000000000000000000000000010" else
                  chw1_wrk3_msa_i2 when int_ack_buf = "00000000000000000000000000000100" else
                  chw1_wrk4_msa_i2 when int_ack_buf = "00000000000000000000000000001000" else
                  chw1_wrk5_msa_i2 when int_ack_buf = "00000000000000000000000000010000" else
                  chw1_wrk6_msa_i2 when int_ack_buf = "00000000000000000000000000100000" else
                  chw1_wrk7_msa_i2 when int_ack_buf = "00000000000000000000000001000000" else
                  chw1_wrk8_msa_i2 when int_ack_buf = "00000000000000000000000010000000" else
                  chw1_wrk9_msa_i2 when int_ack_buf = "00000000000000000000000100000000" else
                  chw1_wrk10_msa_i2 when int_ack_buf = "00000000000000000000001000000000" else
                  chw1_wrk11_msa_i2 when int_ack_buf = "00000000000000000000010000000000" else
                  chw1_wrk12_msa_i2 when int_ack_buf = "00000000000000000000100000000000" else
                  chw1_wrk13_msa_i2 when int_ack_buf = "00000000000000000001000000000000" else
                  chw1_wrk14_msa_i2 when int_ack_buf = "00000000000000000010000000000000" else
                  chw1_wrk15_msa_i2 when int_ack_buf = "00000000000000000100000000000000" else
                  chw1_wrk16_msa_i2 when int_ack_buf = "00000000000000001000000000000000" else
                  chw1_wrk1_msa_i2 when int_ack_buf = "00000000000000000000000000000001" else
                  chw2_wrk2_msa_i2 when int_ack_buf = "00000000000000100000000000000000" else
                  chw2_wrk3_msa_i2 when int_ack_buf = "00000000000001000000000000000000" else
                  chw2_wrk4_msa_i2 when int_ack_buf = "00000000000010000000000000000000" else
                  chw2_wrk5_msa_i2 when int_ack_buf = "00000000000100000000000000000000" else
                  chw2_wrk6_msa_i2 when int_ack_buf = "00000000001000000000000000000000" else
                  chw2_wrk7_msa_i2 when int_ack_buf = "00000000010000000000000000000000" else
                  chw2_wrk8_msa_i2 when int_ack_buf = "00000000100000000000000000000000" else
                  chw2_wrk9_msa_i2 when int_ack_buf = "00000001000000000000000000000000" else
                  chw2_wrk10_msa_i2 when int_ack_buf = "00000010000000000000000000000000" else
                  chw2_wrk11_msa_i2 when int_ack_buf = "00000100000000000000000000000000" else
                  chw2_wrk12_msa_i2 when int_ack_buf = "00001000000000000000000000000000" else
                  chw2_wrk13_msa_i2 when int_ack_buf = "00010000000000000000000000000000" else
                  chw2_wrk14_msa_i2 when int_ack_buf = "00100000000000000000000000000000" else
                  chw2_wrk15_msa_i2 when int_ack_buf = "01000000000000000000000000000000" else
                  chw2_wrk16_msa_i2 when int_ack_buf = "10000000000000000000000000000000" else
                  (others => '0');

    chw1_wrk1_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000000001" else (others => '0');
    chw1_wrk2_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000000010" else (others => '0');
    chw1_wrk3_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000000100" else (others => '0');
    chw1_wrk4_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000001000" else (others => '0');
    chw1_wrk5_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000010000" else (others => '0');
    chw1_wrk6_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000000100000" else (others => '0');
    chw1_wrk7_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000001000000" else (others => '0');
    chw1_wrk8_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000010000000" else (others => '0');
    chw1_wrk9_msa_new  <= msa_new_out when int_ack_buf = "00000000000000000000000100000000" else (others => '0');
    chw1_wrk10_msa_new <= msa_new_out when int_ack_buf = "00000000000000000000001000000000" else (others => '0');
    chw1_wrk11_msa_new <= msa_new_out when int_ack_buf = "00000000000000000000010000000000" else (others => '0');
    chw1_wrk12_msa_new <= msa_new_out when int_ack_buf = "00000000000000000000100000000000" else (others => '0');
    chw1_wrk13_msa_new <= msa_new_out when int_ack_buf = "00000000000000000001000000000000" else (others => '0');
    chw1_wrk14_msa_new <= msa_new_out when int_ack_buf = "00000000000000000010000000000000" else (others => '0');
    chw1_wrk15_msa_new <= msa_new_out when int_ack_buf = "00000000000000000100000000000000" else (others => '0');
    chw1_wrk16_msa_new <= msa_new_out when int_ack_buf = "00000000000000001000000000000000" else (others => '0');
    chw2_wrk1_msa_new  <= msa_new_out when int_ack_buf = "00000000000000010000000000000000" else (others => '0');
    chw2_wrk2_msa_new  <= msa_new_out when int_ack_buf = "00000000000000100000000000000000" else (others => '0');
    chw2_wrk3_msa_new  <= msa_new_out when int_ack_buf = "00000000000001000000000000000000" else (others => '0');
    chw2_wrk4_msa_new  <= msa_new_out when int_ack_buf = "00000000000010000000000000000000" else (others => '0');
    chw2_wrk5_msa_new  <= msa_new_out when int_ack_buf = "00000000000100000000000000000000" else (others => '0');
    chw2_wrk6_msa_new  <= msa_new_out when int_ack_buf = "00000000001000000000000000000000" else (others => '0');
    chw2_wrk7_msa_new  <= msa_new_out when int_ack_buf = "00000000010000000000000000000000" else (others => '0');
    chw2_wrk8_msa_new  <= msa_new_out when int_ack_buf = "00000000100000000000000000000000" else (others => '0');
    chw2_wrk9_msa_new  <= msa_new_out when int_ack_buf = "00000001000000000000000000000000" else (others => '0');
    chw2_wrk10_msa_new <= msa_new_out when int_ack_buf = "00000010000000000000000000000000" else (others => '0');
    chw2_wrk11_msa_new <= msa_new_out when int_ack_buf = "00000100000000000000000000000000" else (others => '0');
    chw2_wrk12_msa_new <= msa_new_out when int_ack_buf = "00001000000000000000000000000000" else (others => '0');
    chw2_wrk13_msa_new <= msa_new_out when int_ack_buf = "00010000000000000000000000000000" else (others => '0');
    chw2_wrk14_msa_new <= msa_new_out when int_ack_buf = "00100000000000000000000000000000" else (others => '0');
    chw2_wrk15_msa_new <= msa_new_out when int_ack_buf = "01000000000000000000000000000000" else (others => '0');
    chw2_wrk16_msa_new <= msa_new_out when int_ack_buf = "10000000000000000000000000000000" else (others => '0');

    schedule_msa_access : process(clk)
        variable toggle : std_logic := '0';
    begin
        if rising_edge(clk) then if toggle = '1' then
                if    int_req_buf(0)  = '1' then int_sig_buf(0)  <= '1';
                elsif int_req_buf(1)  = '1' then int_sig_buf(1)  <= '1';
                elsif int_req_buf(2)  = '1' then int_sig_buf(2)  <= '1';
                elsif int_req_buf(3)  = '1' then int_sig_buf(3)  <= '1';
                elsif int_req_buf(4)  = '1' then int_sig_buf(4)  <= '1';
                elsif int_req_buf(5)  = '1' then int_sig_buf(5)  <= '1';
                elsif int_req_buf(6)  = '1' then int_sig_buf(6)  <= '1';
                elsif int_req_buf(7)  = '1' then int_sig_buf(7)  <= '1';
                elsif int_req_buf(8)  = '1' then int_sig_buf(8)  <= '1';
                elsif int_req_buf(9)  = '1' then int_sig_buf(9)  <= '1';
                elsif int_req_buf(10) = '1' then int_sig_buf(10) <= '1';
                elsif int_req_buf(11) = '1' then int_sig_buf(11) <= '1';
                elsif int_req_buf(12) = '1' then int_sig_buf(12) <= '1';
                elsif int_req_buf(13) = '1' then int_sig_buf(13) <= '1';
                elsif int_req_buf(14) = '1' then int_sig_buf(14) <= '1';
                elsif int_req_buf(15) = '1' then int_sig_buf(15) <= '1';
                elsif int_req_buf(16) = '1' then int_sig_buf(16) <= '1';
                elsif int_req_buf(17) = '1' then int_sig_buf(17) <= '1';
                elsif int_req_buf(18) = '1' then int_sig_buf(18) <= '1';
                elsif int_req_buf(19) = '1' then int_sig_buf(19) <= '1';
                elsif int_req_buf(20) = '1' then int_sig_buf(20) <= '1';
                elsif int_req_buf(21) = '1' then int_sig_buf(21) <= '1';
                elsif int_req_buf(22) = '1' then int_sig_buf(22) <= '1';
                elsif int_req_buf(23) = '1' then int_sig_buf(23) <= '1';
                elsif int_req_buf(24) = '1' then int_sig_buf(24) <= '1';
                elsif int_req_buf(25) = '1' then int_sig_buf(25) <= '1';
                elsif int_req_buf(26) = '1' then int_sig_buf(26) <= '1';
                elsif int_req_buf(27) = '1' then int_sig_buf(27) <= '1';
                elsif int_req_buf(28) = '1' then int_sig_buf(28) <= '1';
                elsif int_req_buf(29) = '1' then int_sig_buf(29) <= '1';
                elsif int_req_buf(30) = '1' then int_sig_buf(30) <= '1';
                elsif int_req_buf(31) = '1' then int_sig_buf(31) <= '1';
                end if;
            end if;

            if int_ack_buf(0)  = '1' then int_sig_buf(0)  <= '0'; end if;
            if int_ack_buf(1)  = '1' then int_sig_buf(1)  <= '0'; end if;
            if int_ack_buf(2)  = '1' then int_sig_buf(2)  <= '0'; end if;
            if int_ack_buf(3)  = '1' then int_sig_buf(3)  <= '0'; end if;
            if int_ack_buf(4)  = '1' then int_sig_buf(4)  <= '0'; end if;
            if int_ack_buf(5)  = '1' then int_sig_buf(5)  <= '0'; end if;
            if int_ack_buf(6)  = '1' then int_sig_buf(6)  <= '0'; end if;
            if int_ack_buf(7)  = '1' then int_sig_buf(7)  <= '0'; end if;
            if int_ack_buf(8)  = '1' then int_sig_buf(8)  <= '0'; end if;
            if int_ack_buf(9)  = '1' then int_sig_buf(9)  <= '0'; end if;
            if int_ack_buf(10) = '1' then int_sig_buf(10) <= '0'; end if;
            if int_ack_buf(11) = '1' then int_sig_buf(11) <= '0'; end if;
            if int_ack_buf(12) = '1' then int_sig_buf(12) <= '0'; end if;
            if int_ack_buf(13) = '1' then int_sig_buf(13) <= '0'; end if;
            if int_ack_buf(14) = '1' then int_sig_buf(14) <= '0'; end if;
            if int_ack_buf(15) = '1' then int_sig_buf(15) <= '0'; end if;
            if int_ack_buf(16) = '1' then int_sig_buf(16) <= '0'; end if;
            if int_ack_buf(17) = '1' then int_sig_buf(17) <= '0'; end if;
            if int_ack_buf(18) = '1' then int_sig_buf(18) <= '0'; end if;
            if int_ack_buf(19) = '1' then int_sig_buf(19) <= '0'; end if;
            if int_ack_buf(20) = '1' then int_sig_buf(20) <= '0'; end if;
            if int_ack_buf(21) = '1' then int_sig_buf(21) <= '0'; end if;
            if int_ack_buf(22) = '1' then int_sig_buf(22) <= '0'; end if;
            if int_ack_buf(23) = '1' then int_sig_buf(23) <= '0'; end if;
            if int_ack_buf(24) = '1' then int_sig_buf(24) <= '0'; end if;
            if int_ack_buf(25) = '1' then int_sig_buf(25) <= '0'; end if;
            if int_ack_buf(26) = '1' then int_sig_buf(26) <= '0'; end if;
            if int_ack_buf(27) = '1' then int_sig_buf(27) <= '0'; end if;
            if int_ack_buf(28) = '1' then int_sig_buf(28) <= '0'; end if;
            if int_ack_buf(29) = '1' then int_sig_buf(29) <= '0'; end if;
            if int_ack_buf(30) = '1' then int_sig_buf(30) <= '0'; end if;
            if int_ack_buf(31) = '1' then int_sig_buf(31) <= '0'; end if;

            toggle := not toggle;
        end if;
    end process schedule_msa_access;
end behavioral;
