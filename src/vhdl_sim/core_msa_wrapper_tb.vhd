library ieee;
use ieee.std_logic_1164.all;

entity core_msa_wrapper_tb is
end core_msa_wrapper_tb;

architecture behavioral of core_msa_wrapper_tb is
    component sim_clk is
        generic
        (
            PERIOD      : time := 10 ns;
            REPORT_TIME : time := 10 us
        );
        port(clk_out : out std_logic);
    end component;

    component core_msa_wrapper is
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
    end component;

    signal clk : std_logic := '0';

    -- signals for the workers
    signal worker1_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker1_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker1_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker1_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker2_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker2_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker2_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker2_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker3_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker3_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker3_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker3_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker4_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker4_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker4_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker4_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker5_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker5_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker5_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker5_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker6_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker6_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker6_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker6_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker7_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker7_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker7_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker7_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker8_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker8_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker8_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker8_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker9_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker9_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker9_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker9_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker10_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker10_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker10_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker10_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker11_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker11_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker11_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker11_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker12_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker12_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker12_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker12_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker13_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker13_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker13_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker13_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker14_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker14_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker14_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker14_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker15_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker15_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker15_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker15_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker16_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker16_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker16_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker16_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker17_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker17_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker17_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker17_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker18_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker18_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker18_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker18_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker19_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker19_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker19_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker19_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker20_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker20_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker20_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker20_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker21_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker21_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker21_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker21_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker22_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker22_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker22_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker22_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker23_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker23_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker23_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker23_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker24_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker24_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker24_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker24_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker25_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker25_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker25_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker25_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker26_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker26_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker26_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker26_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker27_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker27_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker27_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker27_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker28_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker28_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker28_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker28_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker29_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker29_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker29_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker29_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker30_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker30_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker30_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker30_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker31_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker31_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker31_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker31_o_stat : std_logic_vector(7 downto 0) := (others => '0');

    signal worker32_i_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker32_i_stat : std_logic_vector(5 downto 0) := (others => '0');
    signal worker32_o_data : std_logic_vector(7 downto 0) := (others => '0');
    signal worker32_o_stat : std_logic_vector(7 downto 0) := (others => '0');
begin
    sim_clk_gen : sim_clk
        generic map (REPORT_TIME => 1 us)
        port map (clk_out => clk);

    cmw : core_msa_wrapper
        port map
        (
            clk => clk,

            wrk1_i_data => worker1_i_data,
            wrk1_i_stat => worker1_i_stat,
            wrk1_o_data => worker1_o_data,
            wrk1_o_stat => worker1_o_stat,

            wrk2_i_data => worker2_i_data,
            wrk2_i_stat => worker2_i_stat,
            wrk2_o_data => worker2_o_data,
            wrk2_o_stat => worker2_o_stat,

            wrk3_i_data => worker3_i_data,
            wrk3_i_stat => worker3_i_stat,
            wrk3_o_data => worker3_o_data,
            wrk3_o_stat => worker3_o_stat,

            wrk4_i_data => worker4_i_data,
            wrk4_i_stat => worker4_i_stat,
            wrk4_o_data => worker4_o_data,
            wrk4_o_stat => worker4_o_stat,

            wrk5_i_data => worker5_i_data,
            wrk5_i_stat => worker5_i_stat,
            wrk5_o_data => worker5_o_data,
            wrk5_o_stat => worker5_o_stat,

            wrk6_i_data => worker6_i_data,
            wrk6_i_stat => worker6_i_stat,
            wrk6_o_data => worker6_o_data,
            wrk6_o_stat => worker6_o_stat,

            wrk7_i_data => worker7_i_data,
            wrk7_i_stat => worker7_i_stat,
            wrk7_o_data => worker7_o_data,
            wrk7_o_stat => worker7_o_stat,

            wrk8_i_data => worker8_i_data,
            wrk8_i_stat => worker8_i_stat,
            wrk8_o_data => worker8_o_data,
            wrk8_o_stat => worker8_o_stat,

            wrk9_i_data => worker9_i_data,
            wrk9_i_stat => worker9_i_stat,
            wrk9_o_data => worker9_o_data,
            wrk9_o_stat => worker9_o_stat,

            wrk10_i_data => worker10_i_data,
            wrk10_i_stat => worker10_i_stat,
            wrk10_o_data => worker10_o_data,
            wrk10_o_stat => worker10_o_stat,

            wrk11_i_data => worker11_i_data,
            wrk11_i_stat => worker11_i_stat,
            wrk11_o_data => worker11_o_data,
            wrk11_o_stat => worker11_o_stat,

            wrk12_i_data => worker12_i_data,
            wrk12_i_stat => worker12_i_stat,
            wrk12_o_data => worker12_o_data,
            wrk12_o_stat => worker12_o_stat,

            wrk13_i_data => worker13_i_data,
            wrk13_i_stat => worker13_i_stat,
            wrk13_o_data => worker13_o_data,
            wrk13_o_stat => worker13_o_stat,

            wrk14_i_data => worker14_i_data,
            wrk14_i_stat => worker14_i_stat,
            wrk14_o_data => worker14_o_data,
            wrk14_o_stat => worker14_o_stat,

            wrk15_i_data => worker15_i_data,
            wrk15_i_stat => worker15_i_stat,
            wrk15_o_data => worker15_o_data,
            wrk15_o_stat => worker15_o_stat,

            wrk16_i_data => worker16_i_data,
            wrk16_i_stat => worker16_i_stat,
            wrk16_o_data => worker16_o_data,
            wrk16_o_stat => worker16_o_stat,

            wrk17_i_data => worker17_i_data,
            wrk17_i_stat => worker17_i_stat,
            wrk17_o_data => worker17_o_data,
            wrk17_o_stat => worker17_o_stat,

            wrk18_i_data => worker18_i_data,
            wrk18_i_stat => worker18_i_stat,
            wrk18_o_data => worker18_o_data,
            wrk18_o_stat => worker18_o_stat,

            wrk19_i_data => worker19_i_data,
            wrk19_i_stat => worker19_i_stat,
            wrk19_o_data => worker19_o_data,
            wrk19_o_stat => worker19_o_stat,

            wrk20_i_data => worker20_i_data,
            wrk20_i_stat => worker20_i_stat,
            wrk20_o_data => worker20_o_data,
            wrk20_o_stat => worker20_o_stat,

            wrk21_i_data => worker21_i_data,
            wrk21_i_stat => worker21_i_stat,
            wrk21_o_data => worker21_o_data,
            wrk21_o_stat => worker21_o_stat,

            wrk22_i_data => worker22_i_data,
            wrk22_i_stat => worker22_i_stat,
            wrk22_o_data => worker22_o_data,
            wrk22_o_stat => worker22_o_stat,

            wrk23_i_data => worker23_i_data,
            wrk23_i_stat => worker23_i_stat,
            wrk23_o_data => worker23_o_data,
            wrk23_o_stat => worker23_o_stat,

            wrk24_i_data => worker24_i_data,
            wrk24_i_stat => worker24_i_stat,
            wrk24_o_data => worker24_o_data,
            wrk24_o_stat => worker24_o_stat,

            wrk25_i_data => worker25_i_data,
            wrk25_i_stat => worker25_i_stat,
            wrk25_o_data => worker25_o_data,
            wrk25_o_stat => worker25_o_stat,

            wrk26_i_data => worker26_i_data,
            wrk26_i_stat => worker26_i_stat,
            wrk26_o_data => worker26_o_data,
            wrk26_o_stat => worker26_o_stat,

            wrk27_i_data => worker27_i_data,
            wrk27_i_stat => worker27_i_stat,
            wrk27_o_data => worker27_o_data,
            wrk27_o_stat => worker27_o_stat,

            wrk28_i_data => worker28_i_data,
            wrk28_i_stat => worker28_i_stat,
            wrk28_o_data => worker28_o_data,
            wrk28_o_stat => worker28_o_stat,

            wrk29_i_data => worker29_i_data,
            wrk29_i_stat => worker29_i_stat,
            wrk29_o_data => worker29_o_data,
            wrk29_o_stat => worker29_o_stat,

            wrk30_i_data => worker30_i_data,
            wrk30_i_stat => worker30_i_stat,
            wrk30_o_data => worker30_o_data,
            wrk30_o_stat => worker30_o_stat,

            wrk31_i_data => worker31_i_data,
            wrk31_i_stat => worker31_i_stat,
            wrk31_o_data => worker31_o_data,
            wrk31_o_stat => worker31_o_stat,

            wrk32_i_data => worker32_i_data,
            wrk32_i_stat => worker32_i_stat,
            wrk32_o_data => worker32_o_data,
            wrk32_o_stat => worker32_o_stat
        );

    simulate : process
    begin
        wait until rising_edge(clk);

        worker1_i_stat  <= "100000";
        worker2_i_stat  <= "100000";
        worker3_i_stat  <= "100000";
        worker4_i_stat  <= "100000";
        worker5_i_stat  <= "100000";
        worker6_i_stat  <= "100000";
        worker7_i_stat  <= "100000";
        worker8_i_stat  <= "100000";
        worker9_i_stat  <= "100000";
        worker10_i_stat <= "100000";
        worker11_i_stat <= "100000";
        worker12_i_stat <= "100000";
        worker13_i_stat <= "100000";
        worker14_i_stat <= "100000";
        worker15_i_stat <= "100000";
        worker16_i_stat <= "100000";
        worker17_i_stat  <= "100000";
        worker18_i_stat  <= "100000";
        worker19_i_stat  <= "100000";
        worker20_i_stat  <= "100000";
        worker21_i_stat  <= "100000";
        worker22_i_stat  <= "100000";
        worker23_i_stat  <= "100000";
        worker24_i_stat  <= "100000";
        worker25_i_stat  <= "100000";
        worker26_i_stat <= "100000";
        worker27_i_stat <= "100000";
        worker28_i_stat <= "100000";
        worker29_i_stat <= "100000";
        worker30_i_stat <= "100000";
        worker31_i_stat <= "100000";
        worker32_i_stat <= "100000";

        wait until (worker1_o_stat = "10000000" and
                    worker2_o_stat = "10000000" and
                    worker3_o_stat = "10000000" and
                    worker4_o_stat = "10000000" and
                    worker5_o_stat = "10000000" and
                    worker6_o_stat = "10000000" and
                    worker7_o_stat = "10000000" and
                    worker8_o_stat = "10000000" and
                    worker9_o_stat = "10000000" and
                    worker10_o_stat = "10000000" and
                    worker11_o_stat = "10000000" and
                    worker12_o_stat = "10000000" and
                    worker13_o_stat = "10000000" and
                    worker14_o_stat = "10000000" and
                    worker15_o_stat = "10000000" and
                    worker16_o_stat = "10000000" and
                    worker17_o_stat = "10000000" and
                    worker18_o_stat = "10000000" and
                    worker19_o_stat = "10000000" and
                    worker20_o_stat = "10000000" and
                    worker21_o_stat = "10000000" and
                    worker22_o_stat = "10000000" and
                    worker23_o_stat = "10000000" and
                    worker24_o_stat = "10000000" and
                    worker25_o_stat = "10000000" and
                    worker26_o_stat = "10000000" and
                    worker27_o_stat = "10000000" and
                    worker28_o_stat = "10000000" and
                    worker29_o_stat = "10000000" and
                    worker30_o_stat = "10000000" and
                    worker31_o_stat = "10000000" and
                    worker32_o_stat = "10000000");

        wait until rising_edge(clk); -- needed for the processor to wake up
        wait until rising_edge(clk);
        wait until rising_edge(clk);
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- OUTPUTK 00,     op_self_status
        worker1_i_stat  <= "000000";
        worker2_i_stat  <= "000000";
        worker3_i_stat  <= "000000";
        worker4_i_stat  <= "000000";
        worker5_i_stat  <= "000000";
        worker6_i_stat  <= "000000";
        worker7_i_stat  <= "000000";
        worker8_i_stat  <= "000000";
        worker9_i_stat  <= "000000";
        worker10_i_stat <= "000000";
        worker11_i_stat <= "000000";
        worker12_i_stat <= "000000";
        worker13_i_stat <= "000000";
        worker14_i_stat <= "000000";
        worker15_i_stat <= "000000";
        worker16_i_stat <= "000000";
        worker17_i_stat  <= "000000";
        worker18_i_stat  <= "000000";
        worker19_i_stat  <= "000000";
        worker20_i_stat  <= "000000";
        worker21_i_stat  <= "000000";
        worker22_i_stat  <= "000000";
        worker23_i_stat  <= "000000";
        worker24_i_stat  <= "000000";
        worker25_i_stat  <= "000000";
        worker26_i_stat <= "000000";
        worker27_i_stat <= "000000";
        worker28_i_stat <= "000000";
        worker29_i_stat <= "000000";
        worker30_i_stat <= "000000";
        worker31_i_stat <= "000000";
        worker32_i_stat <= "000000";
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"00";
        worker2_i_data  <= x"01";
        worker3_i_data  <= x"02";
        worker4_i_data  <= x"03";
        worker5_i_data  <= x"04";
        worker6_i_data  <= x"05";
        worker7_i_data  <= x"06";
        worker8_i_data  <= x"07";
        worker9_i_data  <= x"08";
        worker10_i_data <= x"09";
        worker11_i_data <= x"0A";
        worker12_i_data <= x"0B";
        worker13_i_data <= x"0C";
        worker14_i_data <= x"0D";
        worker15_i_data <= x"0E";
        worker16_i_data <= x"0F";
        worker17_i_data  <= x"10";
        worker18_i_data  <= x"11";
        worker19_i_data  <= x"12";
        worker20_i_data  <= x"13";
        worker21_i_data  <= x"14";
        worker22_i_data  <= x"15";
        worker23_i_data  <= x"16";
        worker24_i_data  <= x"17";
        worker25_i_data  <= x"18";
        worker26_i_data <= x"19";
        worker27_i_data <= x"1A";
        worker28_i_data <= x"1B";
        worker29_i_data <= x"1C";
        worker30_i_data <= x"1D";
        worker31_i_data <= x"1E";
        worker32_i_data <= x"1F";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"01";
        worker2_i_data  <= x"02";
        worker3_i_data  <= x"03";
        worker4_i_data  <= x"04";
        worker5_i_data  <= x"05";
        worker6_i_data  <= x"06";
        worker7_i_data  <= x"07";
        worker8_i_data  <= x"08";
        worker9_i_data  <= x"09";
        worker10_i_data <= x"0A";
        worker11_i_data <= x"0B";
        worker12_i_data <= x"0C";
        worker13_i_data <= x"0D";
        worker14_i_data <= x"0E";
        worker15_i_data <= x"0F";
        worker16_i_data <= x"10";
        worker17_i_data  <= x"11";
        worker18_i_data  <= x"12";
        worker19_i_data  <= x"13";
        worker20_i_data  <= x"14";
        worker21_i_data  <= x"15";
        worker22_i_data  <= x"16";
        worker23_i_data  <= x"17";
        worker24_i_data  <= x"18";
        worker25_i_data  <= x"19";
        worker26_i_data <= x"1A";
        worker27_i_data <= x"1B";
        worker28_i_data <= x"1C";
        worker29_i_data <= x"1D";
        worker30_i_data <= x"1E";
        worker31_i_data <= x"1F";
        worker32_i_data <= x"00";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"02";
        worker2_i_data  <= x"03";
        worker3_i_data  <= x"04";
        worker4_i_data  <= x"05";
        worker5_i_data  <= x"06";
        worker6_i_data  <= x"07";
        worker7_i_data  <= x"08";
        worker8_i_data  <= x"09";
        worker9_i_data  <= x"0A";
        worker10_i_data <= x"0B";
        worker11_i_data <= x"0C";
        worker12_i_data <= x"0D";
        worker13_i_data <= x"0E";
        worker14_i_data <= x"0F";
        worker15_i_data <= x"10";
        worker16_i_data <= x"11";
        worker17_i_data  <= x"12";
        worker18_i_data  <= x"13";
        worker19_i_data  <= x"14";
        worker20_i_data  <= x"15";
        worker21_i_data  <= x"16";
        worker22_i_data  <= x"17";
        worker23_i_data  <= x"18";
        worker24_i_data  <= x"19";
        worker25_i_data  <= x"1A";
        worker26_i_data <= x"1B";
        worker27_i_data <= x"1C";
        worker28_i_data <= x"1D";
        worker29_i_data <= x"1E";
        worker30_i_data <= x"1F";
        worker31_i_data <= x"00";
        worker32_i_data <= x"01";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"03";
        worker2_i_data  <= x"04";
        worker3_i_data  <= x"05";
        worker4_i_data  <= x"06";
        worker5_i_data  <= x"07";
        worker6_i_data  <= x"08";
        worker7_i_data  <= x"09";
        worker8_i_data  <= x"0A";
        worker9_i_data  <= x"0B";
        worker10_i_data <= x"0C";
        worker11_i_data <= x"0D";
        worker12_i_data <= x"0E";
        worker13_i_data <= x"0F";
        worker14_i_data <= x"10";
        worker15_i_data <= x"11";
        worker16_i_data <= x"12";
        worker17_i_data  <= x"13";
        worker18_i_data  <= x"14";
        worker19_i_data  <= x"15";
        worker20_i_data  <= x"16";
        worker21_i_data  <= x"17";
        worker22_i_data  <= x"18";
        worker23_i_data  <= x"19";
        worker24_i_data  <= x"1A";
        worker25_i_data  <= x"1B";
        worker26_i_data <= x"1C";
        worker27_i_data <= x"1D";
        worker28_i_data <= x"1E";
        worker29_i_data <= x"1F";
        worker30_i_data <= x"00";
        worker31_i_data <= x"01";
        worker32_i_data <= x"02";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"04";
        worker2_i_data  <= x"05";
        worker3_i_data  <= x"06";
        worker4_i_data  <= x"07";
        worker5_i_data  <= x"08";
        worker6_i_data  <= x"09";
        worker7_i_data  <= x"0A";
        worker8_i_data  <= x"0B";
        worker9_i_data  <= x"0C";
        worker10_i_data <= x"0D";
        worker11_i_data <= x"0E";
        worker12_i_data <= x"0F";
        worker13_i_data <= x"10";
        worker14_i_data <= x"11";
        worker15_i_data <= x"12";
        worker16_i_data <= x"13";
        worker17_i_data  <= x"14";
        worker18_i_data  <= x"15";
        worker19_i_data  <= x"16";
        worker20_i_data  <= x"17";
        worker21_i_data  <= x"18";
        worker22_i_data  <= x"19";
        worker23_i_data  <= x"1A";
        worker24_i_data  <= x"1B";
        worker25_i_data  <= x"1C";
        worker26_i_data <= x"1D";
        worker27_i_data <= x"1E";
        worker28_i_data <= x"1F";
        worker29_i_data <= x"00";
        worker30_i_data <= x"01";
        worker31_i_data <= x"02";
        worker32_i_data <= x"03";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"05";
        worker2_i_data  <= x"06";
        worker3_i_data  <= x"07";
        worker4_i_data  <= x"08";
        worker5_i_data  <= x"09";
        worker6_i_data  <= x"0A";
        worker7_i_data  <= x"0B";
        worker8_i_data  <= x"0C";
        worker9_i_data  <= x"0D";
        worker10_i_data <= x"0E";
        worker11_i_data <= x"0F";
        worker12_i_data <= x"10";
        worker13_i_data <= x"11";
        worker14_i_data <= x"12";
        worker15_i_data <= x"13";
        worker16_i_data <= x"14";
        worker17_i_data  <= x"15";
        worker18_i_data  <= x"16";
        worker19_i_data  <= x"17";
        worker20_i_data  <= x"18";
        worker21_i_data  <= x"19";
        worker22_i_data  <= x"1A";
        worker23_i_data  <= x"1B";
        worker24_i_data  <= x"1C";
        worker25_i_data  <= x"1D";
        worker26_i_data <= x"1E";
        worker27_i_data <= x"1F";
        worker28_i_data <= x"00";
        worker29_i_data <= x"01";
        worker30_i_data <= x"02";
        worker31_i_data <= x"03";
        worker32_i_data <= x"04";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"06";
        worker2_i_data  <= x"07";
        worker3_i_data  <= x"08";
        worker4_i_data  <= x"09";
        worker5_i_data  <= x"0A";
        worker6_i_data  <= x"0B";
        worker7_i_data  <= x"0C";
        worker8_i_data  <= x"0D";
        worker9_i_data  <= x"0E";
        worker10_i_data <= x"0F";
        worker11_i_data <= x"10";
        worker12_i_data <= x"11";
        worker13_i_data <= x"12";
        worker14_i_data <= x"13";
        worker15_i_data <= x"14";
        worker16_i_data <= x"15";
        worker17_i_data  <= x"16";
        worker18_i_data  <= x"17";
        worker19_i_data  <= x"18";
        worker20_i_data  <= x"19";
        worker21_i_data  <= x"1A";
        worker22_i_data  <= x"1B";
        worker23_i_data  <= x"1C";
        worker24_i_data  <= x"1D";
        worker25_i_data  <= x"1E";
        worker26_i_data <= x"1F";
        worker27_i_data <= x"00";
        worker28_i_data <= x"01";
        worker29_i_data <= x"02";
        worker30_i_data <= x"03";
        worker31_i_data <= x"04";
        worker32_i_data <= x"05";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"07";
        worker2_i_data  <= x"08";
        worker3_i_data  <= x"09";
        worker4_i_data  <= x"0A";
        worker5_i_data  <= x"0B";
        worker6_i_data  <= x"0C";
        worker7_i_data  <= x"0D";
        worker8_i_data  <= x"0E";
        worker9_i_data  <= x"0F";
        worker10_i_data <= x"10";
        worker11_i_data <= x"11";
        worker12_i_data <= x"12";
        worker13_i_data <= x"13";
        worker14_i_data <= x"14";
        worker15_i_data <= x"15";
        worker16_i_data <= x"16";
        worker17_i_data  <= x"17";
        worker18_i_data  <= x"18";
        worker19_i_data  <= x"19";
        worker20_i_data  <= x"1A";
        worker21_i_data  <= x"1B";
        worker22_i_data  <= x"1C";
        worker23_i_data  <= x"1D";
        worker24_i_data  <= x"1E";
        worker25_i_data  <= x"1F";
        worker26_i_data <= x"00";
        worker27_i_data <= x"01";
        worker28_i_data <= x"02";
        worker29_i_data <= x"03";
        worker30_i_data <= x"04";
        worker31_i_data <= x"05";
        worker32_i_data <= x"06";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"08";
        worker2_i_data  <= x"09";
        worker3_i_data  <= x"0A";
        worker4_i_data  <= x"0B";
        worker5_i_data  <= x"0C";
        worker6_i_data  <= x"0D";
        worker7_i_data  <= x"0E";
        worker8_i_data  <= x"0F";
        worker9_i_data  <= x"10";
        worker10_i_data <= x"11";
        worker11_i_data <= x"12";
        worker12_i_data <= x"13";
        worker13_i_data <= x"14";
        worker14_i_data <= x"15";
        worker15_i_data <= x"16";
        worker16_i_data <= x"17";
        worker17_i_data  <= x"18";
        worker18_i_data  <= x"19";
        worker19_i_data  <= x"1A";
        worker20_i_data  <= x"1B";
        worker21_i_data  <= x"1C";
        worker22_i_data  <= x"1D";
        worker23_i_data  <= x"1E";
        worker24_i_data  <= x"1F";
        worker25_i_data  <= x"00";
        worker26_i_data <= x"01";
        worker27_i_data <= x"02";
        worker28_i_data <= x"03";
        worker29_i_data <= x"04";
        worker30_i_data <= x"05";
        worker31_i_data <= x"06";
        worker32_i_data <= x"07";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"09";
        worker2_i_data  <= x"0A";
        worker3_i_data  <= x"0B";
        worker4_i_data  <= x"0C";
        worker5_i_data  <= x"0D";
        worker6_i_data  <= x"0E";
        worker7_i_data  <= x"0F";
        worker8_i_data  <= x"10";
        worker9_i_data  <= x"11";
        worker10_i_data <= x"12";
        worker11_i_data <= x"13";
        worker12_i_data <= x"14";
        worker13_i_data <= x"15";
        worker14_i_data <= x"16";
        worker15_i_data <= x"17";
        worker16_i_data <= x"18";
        worker17_i_data  <= x"19";
        worker18_i_data  <= x"1A";
        worker19_i_data  <= x"1B";
        worker20_i_data  <= x"1C";
        worker21_i_data  <= x"1D";
        worker22_i_data  <= x"1E";
        worker23_i_data  <= x"1F";
        worker24_i_data  <= x"00";
        worker25_i_data  <= x"01";
        worker26_i_data <= x"02";
        worker27_i_data <= x"03";
        worker28_i_data <= x"04";
        worker29_i_data <= x"05";
        worker30_i_data <= x"06";
        worker31_i_data <= x"07";
        worker32_i_data <= x"08";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0A";
        worker2_i_data  <= x"0B";
        worker3_i_data  <= x"0C";
        worker4_i_data  <= x"0D";
        worker5_i_data  <= x"0E";
        worker6_i_data  <= x"0F";
        worker7_i_data  <= x"10";
        worker8_i_data  <= x"11";
        worker9_i_data  <= x"12";
        worker10_i_data <= x"13";
        worker11_i_data <= x"14";
        worker12_i_data <= x"15";
        worker13_i_data <= x"16";
        worker14_i_data <= x"17";
        worker15_i_data <= x"18";
        worker16_i_data <= x"19";
        worker17_i_data  <= x"1A";
        worker18_i_data  <= x"1B";
        worker19_i_data  <= x"1C";
        worker20_i_data  <= x"1D";
        worker21_i_data  <= x"1E";
        worker22_i_data  <= x"1F";
        worker23_i_data  <= x"00";
        worker24_i_data  <= x"01";
        worker25_i_data  <= x"02";
        worker26_i_data <= x"03";
        worker27_i_data <= x"04";
        worker28_i_data <= x"05";
        worker29_i_data <= x"06";
        worker30_i_data <= x"07";
        worker31_i_data <= x"08";
        worker32_i_data <= x"09";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0B";
        worker2_i_data  <= x"0C";
        worker3_i_data  <= x"0D";
        worker4_i_data  <= x"0E";
        worker5_i_data  <= x"0F";
        worker6_i_data  <= x"10";
        worker7_i_data  <= x"11";
        worker8_i_data  <= x"12";
        worker9_i_data  <= x"13";
        worker10_i_data <= x"14";
        worker11_i_data <= x"15";
        worker12_i_data <= x"16";
        worker13_i_data <= x"17";
        worker14_i_data <= x"18";
        worker15_i_data <= x"19";
        worker16_i_data <= x"1A";
        worker17_i_data  <= x"1B";
        worker18_i_data  <= x"1C";
        worker19_i_data  <= x"1D";
        worker20_i_data  <= x"1E";
        worker21_i_data  <= x"1F";
        worker22_i_data  <= x"00";
        worker23_i_data  <= x"01";
        worker24_i_data  <= x"02";
        worker25_i_data  <= x"03";
        worker26_i_data <= x"04";
        worker27_i_data <= x"05";
        worker28_i_data <= x"06";
        worker29_i_data <= x"07";
        worker30_i_data <= x"08";
        worker31_i_data <= x"09";
        worker32_i_data <= x"0A";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0C";
        worker2_i_data  <= x"0D";
        worker3_i_data  <= x"0E";
        worker4_i_data  <= x"0F";
        worker5_i_data  <= x"10";
        worker6_i_data  <= x"11";
        worker7_i_data  <= x"12";
        worker8_i_data  <= x"13";
        worker9_i_data  <= x"14";
        worker10_i_data <= x"15";
        worker11_i_data <= x"16";
        worker12_i_data <= x"17";
        worker13_i_data <= x"18";
        worker14_i_data <= x"19";
        worker15_i_data <= x"1A";
        worker16_i_data <= x"1B";
        worker17_i_data  <= x"1C";
        worker18_i_data  <= x"1D";
        worker19_i_data  <= x"1E";
        worker20_i_data  <= x"1F";
        worker21_i_data  <= x"00";
        worker22_i_data  <= x"01";
        worker23_i_data  <= x"02";
        worker24_i_data  <= x"03";
        worker25_i_data  <= x"04";
        worker26_i_data <= x"05";
        worker27_i_data <= x"06";
        worker28_i_data <= x"07";
        worker29_i_data <= x"08";
        worker30_i_data <= x"09";
        worker31_i_data <= x"0A";
        worker32_i_data <= x"0B";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0D";
        worker2_i_data  <= x"0E";
        worker3_i_data  <= x"0F";
        worker4_i_data  <= x"10";
        worker5_i_data  <= x"11";
        worker6_i_data  <= x"12";
        worker7_i_data  <= x"13";
        worker8_i_data  <= x"14";
        worker9_i_data  <= x"15";
        worker10_i_data <= x"16";
        worker11_i_data <= x"17";
        worker12_i_data <= x"18";
        worker13_i_data <= x"19";
        worker14_i_data <= x"1A";
        worker15_i_data <= x"1B";
        worker16_i_data <= x"1C";
        worker17_i_data  <= x"1D";
        worker18_i_data  <= x"1E";
        worker19_i_data  <= x"1F";
        worker20_i_data  <= x"00";
        worker21_i_data  <= x"01";
        worker22_i_data  <= x"02";
        worker23_i_data  <= x"03";
        worker24_i_data  <= x"04";
        worker25_i_data  <= x"05";
        worker26_i_data <= x"06";
        worker27_i_data <= x"07";
        worker28_i_data <= x"08";
        worker29_i_data <= x"09";
        worker30_i_data <= x"0A";
        worker31_i_data <= x"0B";
        worker32_i_data <= x"0C";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0E";
        worker2_i_data  <= x"0F";
        worker3_i_data  <= x"10";
        worker4_i_data  <= x"11";
        worker5_i_data  <= x"12";
        worker6_i_data  <= x"13";
        worker7_i_data  <= x"14";
        worker8_i_data  <= x"15";
        worker9_i_data  <= x"16";
        worker10_i_data <= x"17";
        worker11_i_data <= x"18";
        worker12_i_data <= x"19";
        worker13_i_data <= x"1A";
        worker14_i_data <= x"1B";
        worker15_i_data <= x"1C";
        worker16_i_data <= x"1D";
        worker17_i_data  <= x"1E";
        worker18_i_data  <= x"1F";
        worker19_i_data  <= x"00";
        worker20_i_data  <= x"01";
        worker21_i_data  <= x"02";
        worker22_i_data  <= x"03";
        worker23_i_data  <= x"04";
        worker24_i_data  <= x"05";
        worker25_i_data  <= x"06";
        worker26_i_data <= x"07";
        worker27_i_data <= x"08";
        worker28_i_data <= x"09";
        worker29_i_data <= x"0A";
        worker30_i_data <= x"0B";
        worker31_i_data <= x"0C";
        worker32_i_data <= x"0D";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0F";
        worker2_i_data  <= x"10";
        worker3_i_data  <= x"11";
        worker4_i_data  <= x"12";
        worker5_i_data  <= x"13";
        worker6_i_data  <= x"14";
        worker7_i_data  <= x"15";
        worker8_i_data  <= x"16";
        worker9_i_data  <= x"17";
        worker10_i_data <= x"18";
        worker11_i_data <= x"19";
        worker12_i_data <= x"1A";
        worker13_i_data <= x"1B";
        worker14_i_data <= x"1C";
        worker15_i_data <= x"1D";
        worker16_i_data <= x"1E";
        worker17_i_data  <= x"1F";
        worker18_i_data  <= x"00";
        worker19_i_data  <= x"01";
        worker20_i_data  <= x"02";
        worker21_i_data  <= x"03";
        worker22_i_data  <= x"04";
        worker23_i_data  <= x"05";
        worker24_i_data  <= x"06";
        worker25_i_data  <= x"07";
        worker26_i_data <= x"08";
        worker27_i_data <= x"09";
        worker28_i_data <= x"0A";
        worker29_i_data <= x"0B";
        worker30_i_data <= x"0C";
        worker31_i_data <= x"0D";
        worker32_i_data <= x"0E";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"10";
        worker2_i_data  <= x"11";
        worker3_i_data  <= x"12";
        worker4_i_data  <= x"13";
        worker5_i_data  <= x"14";
        worker6_i_data  <= x"15";
        worker7_i_data  <= x"16";
        worker8_i_data  <= x"17";
        worker9_i_data  <= x"18";
        worker10_i_data <= x"19";
        worker11_i_data <= x"1A";
        worker12_i_data <= x"1B";
        worker13_i_data <= x"1C";
        worker14_i_data <= x"1D";
        worker15_i_data <= x"1E";
        worker16_i_data <= x"1F";
        worker17_i_data  <= x"00";
        worker18_i_data  <= x"01";
        worker19_i_data  <= x"02";
        worker20_i_data  <= x"03";
        worker21_i_data  <= x"04";
        worker22_i_data  <= x"05";
        worker23_i_data  <= x"06";
        worker24_i_data  <= x"07";
        worker25_i_data  <= x"08";
        worker26_i_data <= x"09";
        worker27_i_data <= x"0A";
        worker28_i_data <= x"0B";
        worker29_i_data <= x"0C";
        worker30_i_data <= x"0D";
        worker31_i_data <= x"0E";
        worker32_i_data <= x"0F";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"11";
        worker2_i_data  <= x"12";
        worker3_i_data  <= x"13";
        worker4_i_data  <= x"14";
        worker5_i_data  <= x"15";
        worker6_i_data  <= x"16";
        worker7_i_data  <= x"17";
        worker8_i_data  <= x"18";
        worker9_i_data  <= x"19";
        worker10_i_data <= x"1A";
        worker11_i_data <= x"1B";
        worker12_i_data <= x"1C";
        worker13_i_data <= x"1D";
        worker14_i_data <= x"1E";
        worker15_i_data <= x"1F";
        worker16_i_data <= x"00";
        worker17_i_data  <= x"01";
        worker18_i_data  <= x"02";
        worker19_i_data  <= x"03";
        worker20_i_data  <= x"04";
        worker21_i_data  <= x"05";
        worker22_i_data  <= x"06";
        worker23_i_data  <= x"07";
        worker24_i_data  <= x"08";
        worker25_i_data  <= x"09";
        worker26_i_data <= x"0A";
        worker27_i_data <= x"0B";
        worker28_i_data <= x"0C";
        worker29_i_data <= x"0D";
        worker30_i_data <= x"0E";
        worker31_i_data <= x"0F";
        worker32_i_data <= x"10";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"12";
        worker2_i_data  <= x"13";
        worker3_i_data  <= x"14";
        worker4_i_data  <= x"15";
        worker5_i_data  <= x"16";
        worker6_i_data  <= x"17";
        worker7_i_data  <= x"18";
        worker8_i_data  <= x"19";
        worker9_i_data  <= x"1A";
        worker10_i_data <= x"1B";
        worker11_i_data <= x"1C";
        worker12_i_data <= x"1D";
        worker13_i_data <= x"1E";
        worker14_i_data <= x"1F";
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
        worker17_i_data  <= x"02";
        worker18_i_data  <= x"03";
        worker19_i_data  <= x"04";
        worker20_i_data  <= x"05";
        worker21_i_data  <= x"06";
        worker22_i_data  <= x"07";
        worker23_i_data  <= x"08";
        worker24_i_data  <= x"09";
        worker25_i_data  <= x"0A";
        worker26_i_data <= x"0B";
        worker27_i_data <= x"0C";
        worker28_i_data <= x"0D";
        worker29_i_data <= x"0E";
        worker30_i_data <= x"0F";
        worker31_i_data <= x"10";
        worker32_i_data <= x"11";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"13";
        worker2_i_data  <= x"14";
        worker3_i_data  <= x"15";
        worker4_i_data  <= x"16";
        worker5_i_data  <= x"17";
        worker6_i_data  <= x"18";
        worker7_i_data  <= x"19";
        worker8_i_data  <= x"1A";
        worker9_i_data  <= x"1B";
        worker10_i_data <= x"1C";
        worker11_i_data <= x"1D";
        worker12_i_data <= x"1E";
        worker13_i_data <= x"1F";
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
        worker17_i_data  <= x"03";
        worker18_i_data  <= x"04";
        worker19_i_data  <= x"05";
        worker20_i_data  <= x"06";
        worker21_i_data  <= x"07";
        worker22_i_data  <= x"08";
        worker23_i_data  <= x"09";
        worker24_i_data  <= x"0A";
        worker25_i_data  <= x"0B";
        worker26_i_data <= x"0C";
        worker27_i_data <= x"0D";
        worker28_i_data <= x"0E";
        worker29_i_data <= x"0F";
        worker30_i_data <= x"10";
        worker31_i_data <= x"11";
        worker32_i_data <= x"12";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"14";
        worker2_i_data  <= x"15";
        worker3_i_data  <= x"16";
        worker4_i_data  <= x"17";
        worker5_i_data  <= x"18";
        worker6_i_data  <= x"19";
        worker7_i_data  <= x"1A";
        worker8_i_data  <= x"1B";
        worker9_i_data  <= x"1C";
        worker10_i_data <= x"1D";
        worker11_i_data <= x"1E";
        worker12_i_data <= x"1F";
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
        worker17_i_data  <= x"04";
        worker18_i_data  <= x"05";
        worker19_i_data  <= x"06";
        worker20_i_data  <= x"07";
        worker21_i_data  <= x"08";
        worker22_i_data  <= x"09";
        worker23_i_data  <= x"0A";
        worker24_i_data  <= x"0B";
        worker25_i_data  <= x"0C";
        worker26_i_data <= x"0D";
        worker27_i_data <= x"0E";
        worker28_i_data <= x"0F";
        worker29_i_data <= x"10";
        worker30_i_data <= x"11";
        worker31_i_data <= x"12";
        worker32_i_data <= x"13";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"15";
        worker2_i_data  <= x"16";
        worker3_i_data  <= x"17";
        worker4_i_data  <= x"18";
        worker5_i_data  <= x"19";
        worker6_i_data  <= x"1A";
        worker7_i_data  <= x"1B";
        worker8_i_data  <= x"1C";
        worker9_i_data  <= x"1D";
        worker10_i_data <= x"1E";
        worker11_i_data <= x"1F";
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
        worker17_i_data  <= x"05";
        worker18_i_data  <= x"06";
        worker19_i_data  <= x"07";
        worker20_i_data  <= x"08";
        worker21_i_data  <= x"09";
        worker22_i_data  <= x"0A";
        worker23_i_data  <= x"0B";
        worker24_i_data  <= x"0C";
        worker25_i_data  <= x"0D";
        worker26_i_data <= x"0E";
        worker27_i_data <= x"0F";
        worker28_i_data <= x"10";
        worker29_i_data <= x"11";
        worker30_i_data <= x"12";
        worker31_i_data <= x"13";
        worker32_i_data <= x"14";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"16";
        worker2_i_data  <= x"17";
        worker3_i_data  <= x"18";
        worker4_i_data  <= x"19";
        worker5_i_data  <= x"1A";
        worker6_i_data  <= x"1B";
        worker7_i_data  <= x"1C";
        worker8_i_data  <= x"1D";
        worker9_i_data  <= x"1E";
        worker10_i_data <= x"1F";
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
        worker17_i_data  <= x"06";
        worker18_i_data  <= x"07";
        worker19_i_data  <= x"08";
        worker20_i_data  <= x"09";
        worker21_i_data  <= x"0A";
        worker22_i_data  <= x"0B";
        worker23_i_data  <= x"0C";
        worker24_i_data  <= x"0D";
        worker25_i_data  <= x"0E";
        worker26_i_data <= x"0F";
        worker27_i_data <= x"10";
        worker28_i_data <= x"11";
        worker29_i_data <= x"12";
        worker30_i_data <= x"13";
        worker31_i_data <= x"14";
        worker32_i_data <= x"15";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"17";
        worker2_i_data  <= x"18";
        worker3_i_data  <= x"19";
        worker4_i_data  <= x"1A";
        worker5_i_data  <= x"1B";
        worker6_i_data  <= x"1C";
        worker7_i_data  <= x"1D";
        worker8_i_data  <= x"1E";
        worker9_i_data  <= x"1F";
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
        worker17_i_data  <= x"07";
        worker18_i_data  <= x"08";
        worker19_i_data  <= x"09";
        worker20_i_data  <= x"0A";
        worker21_i_data  <= x"0B";
        worker22_i_data  <= x"0C";
        worker23_i_data  <= x"0D";
        worker24_i_data  <= x"0E";
        worker25_i_data  <= x"0F";
        worker26_i_data <= x"10";
        worker27_i_data <= x"11";
        worker28_i_data <= x"12";
        worker29_i_data <= x"13";
        worker30_i_data <= x"14";
        worker31_i_data <= x"15";
        worker32_i_data <= x"16";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"18";
        worker2_i_data  <= x"19";
        worker3_i_data  <= x"1A";
        worker4_i_data  <= x"1B";
        worker5_i_data  <= x"1C";
        worker6_i_data  <= x"1D";
        worker7_i_data  <= x"1E";
        worker8_i_data  <= x"1F";
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
        worker17_i_data  <= x"08";
        worker18_i_data  <= x"09";
        worker19_i_data  <= x"0A";
        worker20_i_data  <= x"0B";
        worker21_i_data  <= x"0C";
        worker22_i_data  <= x"0D";
        worker23_i_data  <= x"0E";
        worker24_i_data  <= x"0F";
        worker25_i_data  <= x"10";
        worker26_i_data <= x"11";
        worker27_i_data <= x"12";
        worker28_i_data <= x"13";
        worker29_i_data <= x"14";
        worker30_i_data <= x"15";
        worker31_i_data <= x"16";
        worker32_i_data <= x"17";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"19";
        worker2_i_data  <= x"1A";
        worker3_i_data  <= x"1B";
        worker4_i_data  <= x"1C";
        worker5_i_data  <= x"1D";
        worker6_i_data  <= x"1E";
        worker7_i_data  <= x"1F";
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
        worker17_i_data  <= x"09";
        worker18_i_data  <= x"0A";
        worker19_i_data  <= x"0B";
        worker20_i_data  <= x"0C";
        worker21_i_data  <= x"0D";
        worker22_i_data  <= x"0E";
        worker23_i_data  <= x"0F";
        worker24_i_data  <= x"10";
        worker25_i_data  <= x"11";
        worker26_i_data <= x"12";
        worker27_i_data <= x"13";
        worker28_i_data <= x"14";
        worker29_i_data <= x"15";
        worker30_i_data <= x"16";
        worker31_i_data <= x"17";
        worker32_i_data <= x"18";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1A";
        worker2_i_data  <= x"1B";
        worker3_i_data  <= x"1C";
        worker4_i_data  <= x"1D";
        worker5_i_data  <= x"1E";
        worker6_i_data  <= x"1F";
        worker7_i_data  <= x"00";
        worker8_i_data  <= x"01";
        worker9_i_data  <= x"02";
        worker10_i_data <= x"03";
        worker11_i_data <= x"04";
        worker12_i_data <= x"05";
        worker13_i_data <= x"06";
        worker14_i_data <= x"07";
        worker15_i_data <= x"08";
        worker16_i_data <= x"09";
        worker17_i_data  <= x"0A";
        worker18_i_data  <= x"0B";
        worker19_i_data  <= x"0C";
        worker20_i_data  <= x"0D";
        worker21_i_data  <= x"0E";
        worker22_i_data  <= x"0F";
        worker23_i_data  <= x"10";
        worker24_i_data  <= x"11";
        worker25_i_data  <= x"12";
        worker26_i_data <= x"13";
        worker27_i_data <= x"14";
        worker28_i_data <= x"15";
        worker29_i_data <= x"16";
        worker30_i_data <= x"17";
        worker31_i_data <= x"18";
        worker32_i_data <= x"19";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1B";
        worker2_i_data  <= x"1C";
        worker3_i_data  <= x"1D";
        worker4_i_data  <= x"1E";
        worker5_i_data  <= x"1F";
        worker6_i_data  <= x"00";
        worker7_i_data  <= x"01";
        worker8_i_data  <= x"02";
        worker9_i_data  <= x"03";
        worker10_i_data <= x"04";
        worker11_i_data <= x"05";
        worker12_i_data <= x"06";
        worker13_i_data <= x"07";
        worker14_i_data <= x"08";
        worker15_i_data <= x"09";
        worker16_i_data <= x"0A";
        worker17_i_data  <= x"0B";
        worker18_i_data  <= x"0C";
        worker19_i_data  <= x"0D";
        worker20_i_data  <= x"0E";
        worker21_i_data  <= x"0F";
        worker22_i_data  <= x"10";
        worker23_i_data  <= x"11";
        worker24_i_data  <= x"12";
        worker25_i_data  <= x"13";
        worker26_i_data <= x"14";
        worker27_i_data <= x"15";
        worker28_i_data <= x"16";
        worker29_i_data <= x"17";
        worker30_i_data <= x"18";
        worker31_i_data <= x"19";
        worker32_i_data <= x"1A";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1C";
        worker2_i_data  <= x"1D";
        worker3_i_data  <= x"1E";
        worker4_i_data  <= x"1F";
        worker5_i_data  <= x"00";
        worker6_i_data  <= x"01";
        worker7_i_data  <= x"02";
        worker8_i_data  <= x"03";
        worker9_i_data  <= x"04";
        worker10_i_data <= x"05";
        worker11_i_data <= x"06";
        worker12_i_data <= x"07";
        worker13_i_data <= x"08";
        worker14_i_data <= x"09";
        worker15_i_data <= x"0A";
        worker16_i_data <= x"0B";
        worker17_i_data  <= x"0C";
        worker18_i_data  <= x"0D";
        worker19_i_data  <= x"0E";
        worker20_i_data  <= x"0F";
        worker21_i_data  <= x"10";
        worker22_i_data  <= x"11";
        worker23_i_data  <= x"12";
        worker24_i_data  <= x"13";
        worker25_i_data  <= x"14";
        worker26_i_data <= x"15";
        worker27_i_data <= x"16";
        worker28_i_data <= x"17";
        worker29_i_data <= x"18";
        worker30_i_data <= x"19";
        worker31_i_data <= x"1A";
        worker32_i_data <= x"1B";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1D";
        worker2_i_data  <= x"1E";
        worker3_i_data  <= x"1F";
        worker4_i_data  <= x"00";
        worker5_i_data  <= x"01";
        worker6_i_data  <= x"02";
        worker7_i_data  <= x"03";
        worker8_i_data  <= x"04";
        worker9_i_data  <= x"05";
        worker10_i_data <= x"06";
        worker11_i_data <= x"07";
        worker12_i_data <= x"08";
        worker13_i_data <= x"09";
        worker14_i_data <= x"0A";
        worker15_i_data <= x"0B";
        worker16_i_data <= x"0C";
        worker17_i_data  <= x"0D";
        worker18_i_data  <= x"0E";
        worker19_i_data  <= x"0F";
        worker20_i_data  <= x"10";
        worker21_i_data  <= x"11";
        worker22_i_data  <= x"12";
        worker23_i_data  <= x"13";
        worker24_i_data  <= x"14";
        worker25_i_data  <= x"15";
        worker26_i_data <= x"16";
        worker27_i_data <= x"17";
        worker28_i_data <= x"18";
        worker29_i_data <= x"19";
        worker30_i_data <= x"1A";
        worker31_i_data <= x"1B";
        worker32_i_data <= x"1C";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1E";
        worker2_i_data  <= x"1F";
        worker3_i_data  <= x"00";
        worker4_i_data  <= x"01";
        worker5_i_data  <= x"02";
        worker6_i_data  <= x"03";
        worker7_i_data  <= x"04";
        worker8_i_data  <= x"05";
        worker9_i_data  <= x"06";
        worker10_i_data <= x"07";
        worker11_i_data <= x"08";
        worker12_i_data <= x"09";
        worker13_i_data <= x"0A";
        worker14_i_data <= x"0B";
        worker15_i_data <= x"0C";
        worker16_i_data <= x"0D";
        worker17_i_data  <= x"0E";
        worker18_i_data  <= x"0F";
        worker19_i_data  <= x"10";
        worker20_i_data  <= x"11";
        worker21_i_data  <= x"12";
        worker22_i_data  <= x"13";
        worker23_i_data  <= x"14";
        worker24_i_data  <= x"15";
        worker25_i_data  <= x"16";
        worker26_i_data <= x"17";
        worker27_i_data <= x"18";
        worker28_i_data <= x"19";
        worker29_i_data <= x"1A";
        worker30_i_data <= x"1B";
        worker31_i_data <= x"1C";
        worker32_i_data <= x"1D";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1F";
        worker2_i_data  <= x"00";
        worker3_i_data  <= x"01";
        worker4_i_data  <= x"02";
        worker5_i_data  <= x"03";
        worker6_i_data  <= x"04";
        worker7_i_data  <= x"05";
        worker8_i_data  <= x"06";
        worker9_i_data  <= x"07";
        worker10_i_data <= x"08";
        worker11_i_data <= x"09";
        worker12_i_data <= x"0A";
        worker13_i_data <= x"0B";
        worker14_i_data <= x"0C";
        worker15_i_data <= x"0D";
        worker16_i_data <= x"0E";
        worker17_i_data  <= x"0F";
        worker18_i_data  <= x"10";
        worker19_i_data  <= x"11";
        worker20_i_data  <= x"12";
        worker21_i_data  <= x"13";
        worker22_i_data  <= x"14";
        worker23_i_data  <= x"15";
        worker24_i_data  <= x"16";
        worker25_i_data  <= x"17";
        worker26_i_data <= x"18";
        worker27_i_data <= x"19";
        worker28_i_data <= x"1A";
        worker29_i_data <= x"1B";
        worker30_i_data <= x"1C";
        worker31_i_data <= x"1D";
        worker32_i_data <= x"1E";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"00";
        worker2_i_data  <= x"01";
        worker3_i_data  <= x"02";
        worker4_i_data  <= x"03";
        worker5_i_data  <= x"04";
        worker6_i_data  <= x"05";
        worker7_i_data  <= x"06";
        worker8_i_data  <= x"07";
        worker9_i_data  <= x"08";
        worker10_i_data <= x"09";
        worker11_i_data <= x"0A";
        worker12_i_data <= x"0B";
        worker13_i_data <= x"0C";
        worker14_i_data <= x"0D";
        worker15_i_data <= x"0E";
        worker16_i_data <= x"0F";
        worker17_i_data  <= x"10";
        worker18_i_data  <= x"11";
        worker19_i_data  <= x"12";
        worker20_i_data  <= x"13";
        worker21_i_data  <= x"14";
        worker22_i_data  <= x"15";
        worker23_i_data  <= x"16";
        worker24_i_data  <= x"17";
        worker25_i_data  <= x"18";
        worker26_i_data <= x"19";
        worker27_i_data <= x"1A";
        worker28_i_data <= x"1B";
        worker29_i_data <= x"1C";
        worker30_i_data <= x"1D";
        worker31_i_data <= x"1E";
        worker32_i_data <= x"1F";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"01";
        worker2_i_data  <= x"02";
        worker3_i_data  <= x"03";
        worker4_i_data  <= x"04";
        worker5_i_data  <= x"05";
        worker6_i_data  <= x"06";
        worker7_i_data  <= x"07";
        worker8_i_data  <= x"08";
        worker9_i_data  <= x"09";
        worker10_i_data <= x"0A";
        worker11_i_data <= x"0B";
        worker12_i_data <= x"0C";
        worker13_i_data <= x"0D";
        worker14_i_data <= x"0E";
        worker15_i_data <= x"0F";
        worker16_i_data <= x"10";
        worker17_i_data  <= x"11";
        worker18_i_data  <= x"12";
        worker19_i_data  <= x"13";
        worker20_i_data  <= x"14";
        worker21_i_data  <= x"15";
        worker22_i_data  <= x"16";
        worker23_i_data  <= x"17";
        worker24_i_data  <= x"18";
        worker25_i_data  <= x"19";
        worker26_i_data <= x"1A";
        worker27_i_data <= x"1B";
        worker28_i_data <= x"1C";
        worker29_i_data <= x"1D";
        worker30_i_data <= x"1E";
        worker31_i_data <= x"1F";
        worker32_i_data <= x"00";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"02";
        worker2_i_data  <= x"03";
        worker3_i_data  <= x"04";
        worker4_i_data  <= x"05";
        worker5_i_data  <= x"06";
        worker6_i_data  <= x"07";
        worker7_i_data  <= x"08";
        worker8_i_data  <= x"09";
        worker9_i_data  <= x"0A";
        worker10_i_data <= x"0B";
        worker11_i_data <= x"0C";
        worker12_i_data <= x"0D";
        worker13_i_data <= x"0E";
        worker14_i_data <= x"0F";
        worker15_i_data <= x"10";
        worker16_i_data <= x"11";
        worker17_i_data  <= x"12";
        worker18_i_data  <= x"13";
        worker19_i_data  <= x"14";
        worker20_i_data  <= x"15";
        worker21_i_data  <= x"16";
        worker22_i_data  <= x"17";
        worker23_i_data  <= x"18";
        worker24_i_data  <= x"19";
        worker25_i_data  <= x"1A";
        worker26_i_data <= x"1B";
        worker27_i_data <= x"1C";
        worker28_i_data <= x"1D";
        worker29_i_data <= x"1E";
        worker30_i_data <= x"1F";
        worker31_i_data <= x"00";
        worker32_i_data <= x"01";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"03";
        worker2_i_data  <= x"04";
        worker3_i_data  <= x"05";
        worker4_i_data  <= x"06";
        worker5_i_data  <= x"07";
        worker6_i_data  <= x"08";
        worker7_i_data  <= x"09";
        worker8_i_data  <= x"0A";
        worker9_i_data  <= x"0B";
        worker10_i_data <= x"0C";
        worker11_i_data <= x"0D";
        worker12_i_data <= x"0E";
        worker13_i_data <= x"0F";
        worker14_i_data <= x"10";
        worker15_i_data <= x"11";
        worker16_i_data <= x"12";
        worker17_i_data  <= x"13";
        worker18_i_data  <= x"14";
        worker19_i_data  <= x"15";
        worker20_i_data  <= x"16";
        worker21_i_data  <= x"17";
        worker22_i_data  <= x"18";
        worker23_i_data  <= x"19";
        worker24_i_data  <= x"1A";
        worker25_i_data  <= x"1B";
        worker26_i_data <= x"1C";
        worker27_i_data <= x"1D";
        worker28_i_data <= x"1E";
        worker29_i_data <= x"1F";
        worker30_i_data <= x"00";
        worker31_i_data <= x"01";
        worker32_i_data <= x"02";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"04";
        worker2_i_data  <= x"05";
        worker3_i_data  <= x"06";
        worker4_i_data  <= x"07";
        worker5_i_data  <= x"08";
        worker6_i_data  <= x"09";
        worker7_i_data  <= x"0A";
        worker8_i_data  <= x"0B";
        worker9_i_data  <= x"0C";
        worker10_i_data <= x"0D";
        worker11_i_data <= x"0E";
        worker12_i_data <= x"0F";
        worker13_i_data <= x"10";
        worker14_i_data <= x"11";
        worker15_i_data <= x"12";
        worker16_i_data <= x"13";
        worker17_i_data  <= x"14";
        worker18_i_data  <= x"15";
        worker19_i_data  <= x"16";
        worker20_i_data  <= x"17";
        worker21_i_data  <= x"18";
        worker22_i_data  <= x"19";
        worker23_i_data  <= x"1A";
        worker24_i_data  <= x"1B";
        worker25_i_data  <= x"1C";
        worker26_i_data <= x"1D";
        worker27_i_data <= x"1E";
        worker28_i_data <= x"1F";
        worker29_i_data <= x"00";
        worker30_i_data <= x"01";
        worker31_i_data <= x"02";
        worker32_i_data <= x"03";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"05";
        worker2_i_data  <= x"06";
        worker3_i_data  <= x"07";
        worker4_i_data  <= x"08";
        worker5_i_data  <= x"09";
        worker6_i_data  <= x"0A";
        worker7_i_data  <= x"0B";
        worker8_i_data  <= x"0C";
        worker9_i_data  <= x"0D";
        worker10_i_data <= x"0E";
        worker11_i_data <= x"0F";
        worker12_i_data <= x"10";
        worker13_i_data <= x"11";
        worker14_i_data <= x"12";
        worker15_i_data <= x"13";
        worker16_i_data <= x"14";
        worker17_i_data  <= x"15";
        worker18_i_data  <= x"16";
        worker19_i_data  <= x"17";
        worker20_i_data  <= x"18";
        worker21_i_data  <= x"19";
        worker22_i_data  <= x"1A";
        worker23_i_data  <= x"1B";
        worker24_i_data  <= x"1C";
        worker25_i_data  <= x"1D";
        worker26_i_data <= x"1E";
        worker27_i_data <= x"1F";
        worker28_i_data <= x"00";
        worker29_i_data <= x"01";
        worker30_i_data <= x"02";
        worker31_i_data <= x"03";
        worker32_i_data <= x"04";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"06";
        worker2_i_data  <= x"07";
        worker3_i_data  <= x"08";
        worker4_i_data  <= x"09";
        worker5_i_data  <= x"0A";
        worker6_i_data  <= x"0B";
        worker7_i_data  <= x"0C";
        worker8_i_data  <= x"0D";
        worker9_i_data  <= x"0E";
        worker10_i_data <= x"0F";
        worker11_i_data <= x"10";
        worker12_i_data <= x"11";
        worker13_i_data <= x"12";
        worker14_i_data <= x"13";
        worker15_i_data <= x"14";
        worker16_i_data <= x"15";
        worker17_i_data  <= x"16";
        worker18_i_data  <= x"17";
        worker19_i_data  <= x"18";
        worker20_i_data  <= x"19";
        worker21_i_data  <= x"1A";
        worker22_i_data  <= x"1B";
        worker23_i_data  <= x"1C";
        worker24_i_data  <= x"1D";
        worker25_i_data  <= x"1E";
        worker26_i_data <= x"1F";
        worker27_i_data <= x"00";
        worker28_i_data <= x"01";
        worker29_i_data <= x"02";
        worker30_i_data <= x"03";
        worker31_i_data <= x"04";
        worker32_i_data <= x"05";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"07";
        worker2_i_data  <= x"08";
        worker3_i_data  <= x"09";
        worker4_i_data  <= x"0A";
        worker5_i_data  <= x"0B";
        worker6_i_data  <= x"0C";
        worker7_i_data  <= x"0D";
        worker8_i_data  <= x"0E";
        worker9_i_data  <= x"0F";
        worker10_i_data <= x"10";
        worker11_i_data <= x"11";
        worker12_i_data <= x"12";
        worker13_i_data <= x"13";
        worker14_i_data <= x"14";
        worker15_i_data <= x"15";
        worker16_i_data <= x"16";
        worker17_i_data  <= x"17";
        worker18_i_data  <= x"18";
        worker19_i_data  <= x"19";
        worker20_i_data  <= x"1A";
        worker21_i_data  <= x"1B";
        worker22_i_data  <= x"1C";
        worker23_i_data  <= x"1D";
        worker24_i_data  <= x"1E";
        worker25_i_data  <= x"1F";
        worker26_i_data <= x"00";
        worker27_i_data <= x"01";
        worker28_i_data <= x"02";
        worker29_i_data <= x"03";
        worker30_i_data <= x"04";
        worker31_i_data <= x"05";
        worker32_i_data <= x"06";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"08";
        worker2_i_data  <= x"09";
        worker3_i_data  <= x"0A";
        worker4_i_data  <= x"0B";
        worker5_i_data  <= x"0C";
        worker6_i_data  <= x"0D";
        worker7_i_data  <= x"0E";
        worker8_i_data  <= x"0F";
        worker9_i_data  <= x"10";
        worker10_i_data <= x"11";
        worker11_i_data <= x"12";
        worker12_i_data <= x"13";
        worker13_i_data <= x"14";
        worker14_i_data <= x"15";
        worker15_i_data <= x"16";
        worker16_i_data <= x"17";
        worker17_i_data  <= x"18";
        worker18_i_data  <= x"19";
        worker19_i_data  <= x"1A";
        worker20_i_data  <= x"1B";
        worker21_i_data  <= x"1C";
        worker22_i_data  <= x"1D";
        worker23_i_data  <= x"1E";
        worker24_i_data  <= x"1F";
        worker25_i_data  <= x"00";
        worker26_i_data <= x"01";
        worker27_i_data <= x"02";
        worker28_i_data <= x"03";
        worker29_i_data <= x"04";
        worker30_i_data <= x"05";
        worker31_i_data <= x"06";
        worker32_i_data <= x"07";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"09";
        worker2_i_data  <= x"0A";
        worker3_i_data  <= x"0B";
        worker4_i_data  <= x"0C";
        worker5_i_data  <= x"0D";
        worker6_i_data  <= x"0E";
        worker7_i_data  <= x"0F";
        worker8_i_data  <= x"10";
        worker9_i_data  <= x"11";
        worker10_i_data <= x"12";
        worker11_i_data <= x"13";
        worker12_i_data <= x"14";
        worker13_i_data <= x"15";
        worker14_i_data <= x"16";
        worker15_i_data <= x"17";
        worker16_i_data <= x"18";
        worker17_i_data  <= x"19";
        worker18_i_data  <= x"1A";
        worker19_i_data  <= x"1B";
        worker20_i_data  <= x"1C";
        worker21_i_data  <= x"1D";
        worker22_i_data  <= x"1E";
        worker23_i_data  <= x"1F";
        worker24_i_data  <= x"00";
        worker25_i_data  <= x"01";
        worker26_i_data <= x"02";
        worker27_i_data <= x"03";
        worker28_i_data <= x"04";
        worker29_i_data <= x"05";
        worker30_i_data <= x"06";
        worker31_i_data <= x"07";
        worker32_i_data <= x"08";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0A";
        worker2_i_data  <= x"0B";
        worker3_i_data  <= x"0C";
        worker4_i_data  <= x"0D";
        worker5_i_data  <= x"0E";
        worker6_i_data  <= x"0F";
        worker7_i_data  <= x"10";
        worker8_i_data  <= x"11";
        worker9_i_data  <= x"12";
        worker10_i_data <= x"13";
        worker11_i_data <= x"14";
        worker12_i_data <= x"15";
        worker13_i_data <= x"16";
        worker14_i_data <= x"17";
        worker15_i_data <= x"18";
        worker16_i_data <= x"19";
        worker17_i_data  <= x"1A";
        worker18_i_data  <= x"1B";
        worker19_i_data  <= x"1C";
        worker20_i_data  <= x"1D";
        worker21_i_data  <= x"1E";
        worker22_i_data  <= x"1F";
        worker23_i_data  <= x"00";
        worker24_i_data  <= x"01";
        worker25_i_data  <= x"02";
        worker26_i_data <= x"03";
        worker27_i_data <= x"04";
        worker28_i_data <= x"05";
        worker29_i_data <= x"06";
        worker30_i_data <= x"07";
        worker31_i_data <= x"08";
        worker32_i_data <= x"09";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0B";
        worker2_i_data  <= x"0C";
        worker3_i_data  <= x"0D";
        worker4_i_data  <= x"0E";
        worker5_i_data  <= x"0F";
        worker6_i_data  <= x"10";
        worker7_i_data  <= x"11";
        worker8_i_data  <= x"12";
        worker9_i_data  <= x"13";
        worker10_i_data <= x"14";
        worker11_i_data <= x"15";
        worker12_i_data <= x"16";
        worker13_i_data <= x"17";
        worker14_i_data <= x"18";
        worker15_i_data <= x"19";
        worker16_i_data <= x"1A";
        worker17_i_data  <= x"1B";
        worker18_i_data  <= x"1C";
        worker19_i_data  <= x"1D";
        worker20_i_data  <= x"1E";
        worker21_i_data  <= x"1F";
        worker22_i_data  <= x"00";
        worker23_i_data  <= x"01";
        worker24_i_data  <= x"02";
        worker25_i_data  <= x"03";
        worker26_i_data <= x"04";
        worker27_i_data <= x"05";
        worker28_i_data <= x"06";
        worker29_i_data <= x"07";
        worker30_i_data <= x"08";
        worker31_i_data <= x"09";
        worker32_i_data <= x"0A";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0C";
        worker2_i_data  <= x"0D";
        worker3_i_data  <= x"0E";
        worker4_i_data  <= x"0F";
        worker5_i_data  <= x"10";
        worker6_i_data  <= x"11";
        worker7_i_data  <= x"12";
        worker8_i_data  <= x"13";
        worker9_i_data  <= x"14";
        worker10_i_data <= x"15";
        worker11_i_data <= x"16";
        worker12_i_data <= x"17";
        worker13_i_data <= x"18";
        worker14_i_data <= x"19";
        worker15_i_data <= x"1A";
        worker16_i_data <= x"1B";
        worker17_i_data  <= x"1C";
        worker18_i_data  <= x"1D";
        worker19_i_data  <= x"1E";
        worker20_i_data  <= x"1F";
        worker21_i_data  <= x"00";
        worker22_i_data  <= x"01";
        worker23_i_data  <= x"02";
        worker24_i_data  <= x"03";
        worker25_i_data  <= x"04";
        worker26_i_data <= x"05";
        worker27_i_data <= x"06";
        worker28_i_data <= x"07";
        worker29_i_data <= x"08";
        worker30_i_data <= x"09";
        worker31_i_data <= x"0A";
        worker32_i_data <= x"0B";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0D";
        worker2_i_data  <= x"0E";
        worker3_i_data  <= x"0F";
        worker4_i_data  <= x"10";
        worker5_i_data  <= x"11";
        worker6_i_data  <= x"12";
        worker7_i_data  <= x"13";
        worker8_i_data  <= x"14";
        worker9_i_data  <= x"15";
        worker10_i_data <= x"16";
        worker11_i_data <= x"17";
        worker12_i_data <= x"18";
        worker13_i_data <= x"19";
        worker14_i_data <= x"1A";
        worker15_i_data <= x"1B";
        worker16_i_data <= x"1C";
        worker17_i_data  <= x"1D";
        worker18_i_data  <= x"1E";
        worker19_i_data  <= x"1F";
        worker20_i_data  <= x"00";
        worker21_i_data  <= x"01";
        worker22_i_data  <= x"02";
        worker23_i_data  <= x"03";
        worker24_i_data  <= x"04";
        worker25_i_data  <= x"05";
        worker26_i_data <= x"06";
        worker27_i_data <= x"07";
        worker28_i_data <= x"08";
        worker29_i_data <= x"09";
        worker30_i_data <= x"0A";
        worker31_i_data <= x"0B";
        worker32_i_data <= x"0C";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0E";
        worker2_i_data  <= x"0F";
        worker3_i_data  <= x"10";
        worker4_i_data  <= x"11";
        worker5_i_data  <= x"12";
        worker6_i_data  <= x"13";
        worker7_i_data  <= x"14";
        worker8_i_data  <= x"15";
        worker9_i_data  <= x"16";
        worker10_i_data <= x"17";
        worker11_i_data <= x"18";
        worker12_i_data <= x"19";
        worker13_i_data <= x"1A";
        worker14_i_data <= x"1B";
        worker15_i_data <= x"1C";
        worker16_i_data <= x"1D";
        worker17_i_data  <= x"1E";
        worker18_i_data  <= x"1F";
        worker19_i_data  <= x"00";
        worker20_i_data  <= x"01";
        worker21_i_data  <= x"02";
        worker22_i_data  <= x"03";
        worker23_i_data  <= x"04";
        worker24_i_data  <= x"05";
        worker25_i_data  <= x"06";
        worker26_i_data <= x"07";
        worker27_i_data <= x"08";
        worker28_i_data <= x"09";
        worker29_i_data <= x"0A";
        worker30_i_data <= x"0B";
        worker31_i_data <= x"0C";
        worker32_i_data <= x"0D";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"0F";
        worker2_i_data  <= x"10";
        worker3_i_data  <= x"11";
        worker4_i_data  <= x"12";
        worker5_i_data  <= x"13";
        worker6_i_data  <= x"14";
        worker7_i_data  <= x"15";
        worker8_i_data  <= x"16";
        worker9_i_data  <= x"17";
        worker10_i_data <= x"18";
        worker11_i_data <= x"19";
        worker12_i_data <= x"1A";
        worker13_i_data <= x"1B";
        worker14_i_data <= x"1C";
        worker15_i_data <= x"1D";
        worker16_i_data <= x"1E";
        worker17_i_data  <= x"1F";
        worker18_i_data  <= x"00";
        worker19_i_data  <= x"01";
        worker20_i_data  <= x"02";
        worker21_i_data  <= x"03";
        worker22_i_data  <= x"04";
        worker23_i_data  <= x"05";
        worker24_i_data  <= x"06";
        worker25_i_data  <= x"07";
        worker26_i_data <= x"08";
        worker27_i_data <= x"09";
        worker28_i_data <= x"0A";
        worker29_i_data <= x"0B";
        worker30_i_data <= x"0C";
        worker31_i_data <= x"0D";
        worker32_i_data <= x"0E";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"10";
        worker2_i_data  <= x"11";
        worker3_i_data  <= x"12";
        worker4_i_data  <= x"13";
        worker5_i_data  <= x"14";
        worker6_i_data  <= x"15";
        worker7_i_data  <= x"16";
        worker8_i_data  <= x"17";
        worker9_i_data  <= x"18";
        worker10_i_data <= x"19";
        worker11_i_data <= x"1A";
        worker12_i_data <= x"1B";
        worker13_i_data <= x"1C";
        worker14_i_data <= x"1D";
        worker15_i_data <= x"1E";
        worker16_i_data <= x"1F";
        worker17_i_data  <= x"00";
        worker18_i_data  <= x"01";
        worker19_i_data  <= x"02";
        worker20_i_data  <= x"03";
        worker21_i_data  <= x"04";
        worker22_i_data  <= x"05";
        worker23_i_data  <= x"06";
        worker24_i_data  <= x"07";
        worker25_i_data  <= x"08";
        worker26_i_data <= x"09";
        worker27_i_data <= x"0A";
        worker28_i_data <= x"0B";
        worker29_i_data <= x"0C";
        worker30_i_data <= x"0D";
        worker31_i_data <= x"0E";
        worker32_i_data <= x"0F";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"11";
        worker2_i_data  <= x"12";
        worker3_i_data  <= x"13";
        worker4_i_data  <= x"14";
        worker5_i_data  <= x"15";
        worker6_i_data  <= x"16";
        worker7_i_data  <= x"17";
        worker8_i_data  <= x"18";
        worker9_i_data  <= x"19";
        worker10_i_data <= x"1A";
        worker11_i_data <= x"1B";
        worker12_i_data <= x"1C";
        worker13_i_data <= x"1D";
        worker14_i_data <= x"1E";
        worker15_i_data <= x"1F";
        worker16_i_data <= x"00";
        worker17_i_data  <= x"01";
        worker18_i_data  <= x"02";
        worker19_i_data  <= x"03";
        worker20_i_data  <= x"04";
        worker21_i_data  <= x"05";
        worker22_i_data  <= x"06";
        worker23_i_data  <= x"07";
        worker24_i_data  <= x"08";
        worker25_i_data  <= x"09";
        worker26_i_data <= x"0A";
        worker27_i_data <= x"0B";
        worker28_i_data <= x"0C";
        worker29_i_data <= x"0D";
        worker30_i_data <= x"0E";
        worker31_i_data <= x"0F";
        worker32_i_data <= x"10";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"12";
        worker2_i_data  <= x"13";
        worker3_i_data  <= x"14";
        worker4_i_data  <= x"15";
        worker5_i_data  <= x"16";
        worker6_i_data  <= x"17";
        worker7_i_data  <= x"18";
        worker8_i_data  <= x"19";
        worker9_i_data  <= x"1A";
        worker10_i_data <= x"1B";
        worker11_i_data <= x"1C";
        worker12_i_data <= x"1D";
        worker13_i_data <= x"1E";
        worker14_i_data <= x"1F";
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
        worker17_i_data  <= x"02";
        worker18_i_data  <= x"03";
        worker19_i_data  <= x"04";
        worker20_i_data  <= x"05";
        worker21_i_data  <= x"06";
        worker22_i_data  <= x"07";
        worker23_i_data  <= x"08";
        worker24_i_data  <= x"09";
        worker25_i_data  <= x"0A";
        worker26_i_data <= x"0B";
        worker27_i_data <= x"0C";
        worker28_i_data <= x"0D";
        worker29_i_data <= x"0E";
        worker30_i_data <= x"0F";
        worker31_i_data <= x"10";
        worker32_i_data <= x"11";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"13";
        worker2_i_data  <= x"14";
        worker3_i_data  <= x"15";
        worker4_i_data  <= x"16";
        worker5_i_data  <= x"17";
        worker6_i_data  <= x"18";
        worker7_i_data  <= x"19";
        worker8_i_data  <= x"1A";
        worker9_i_data  <= x"1B";
        worker10_i_data <= x"1C";
        worker11_i_data <= x"1D";
        worker12_i_data <= x"1E";
        worker13_i_data <= x"1F";
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
        worker17_i_data  <= x"03";
        worker18_i_data  <= x"04";
        worker19_i_data  <= x"05";
        worker20_i_data  <= x"06";
        worker21_i_data  <= x"07";
        worker22_i_data  <= x"08";
        worker23_i_data  <= x"09";
        worker24_i_data  <= x"0A";
        worker25_i_data  <= x"0B";
        worker26_i_data <= x"0C";
        worker27_i_data <= x"0D";
        worker28_i_data <= x"0E";
        worker29_i_data <= x"0F";
        worker30_i_data <= x"10";
        worker31_i_data <= x"11";
        worker32_i_data <= x"12";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"14";
        worker2_i_data  <= x"15";
        worker3_i_data  <= x"16";
        worker4_i_data  <= x"17";
        worker5_i_data  <= x"18";
        worker6_i_data  <= x"19";
        worker7_i_data  <= x"1A";
        worker8_i_data  <= x"1B";
        worker9_i_data  <= x"1C";
        worker10_i_data <= x"1D";
        worker11_i_data <= x"1E";
        worker12_i_data <= x"1F";
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
        worker17_i_data  <= x"04";
        worker18_i_data  <= x"05";
        worker19_i_data  <= x"06";
        worker20_i_data  <= x"07";
        worker21_i_data  <= x"08";
        worker22_i_data  <= x"09";
        worker23_i_data  <= x"0A";
        worker24_i_data  <= x"0B";
        worker25_i_data  <= x"0C";
        worker26_i_data <= x"0D";
        worker27_i_data <= x"0E";
        worker28_i_data <= x"0F";
        worker29_i_data <= x"10";
        worker30_i_data <= x"11";
        worker31_i_data <= x"12";
        worker32_i_data <= x"13";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"15";
        worker2_i_data  <= x"16";
        worker3_i_data  <= x"17";
        worker4_i_data  <= x"18";
        worker5_i_data  <= x"19";
        worker6_i_data  <= x"1A";
        worker7_i_data  <= x"1B";
        worker8_i_data  <= x"1C";
        worker9_i_data  <= x"1D";
        worker10_i_data <= x"1E";
        worker11_i_data <= x"1F";
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
        worker17_i_data  <= x"05";
        worker18_i_data  <= x"06";
        worker19_i_data  <= x"07";
        worker20_i_data  <= x"08";
        worker21_i_data  <= x"09";
        worker22_i_data  <= x"0A";
        worker23_i_data  <= x"0B";
        worker24_i_data  <= x"0C";
        worker25_i_data  <= x"0D";
        worker26_i_data <= x"0E";
        worker27_i_data <= x"0F";
        worker28_i_data <= x"10";
        worker29_i_data <= x"11";
        worker30_i_data <= x"12";
        worker31_i_data <= x"13";
        worker32_i_data <= x"14";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"16";
        worker2_i_data  <= x"17";
        worker3_i_data  <= x"18";
        worker4_i_data  <= x"19";
        worker5_i_data  <= x"1A";
        worker6_i_data  <= x"1B";
        worker7_i_data  <= x"1C";
        worker8_i_data  <= x"1D";
        worker9_i_data  <= x"1E";
        worker10_i_data <= x"1F";
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
        worker17_i_data  <= x"06";
        worker18_i_data  <= x"07";
        worker19_i_data  <= x"08";
        worker20_i_data  <= x"09";
        worker21_i_data  <= x"0A";
        worker22_i_data  <= x"0B";
        worker23_i_data  <= x"0C";
        worker24_i_data  <= x"0D";
        worker25_i_data  <= x"0E";
        worker26_i_data <= x"0F";
        worker27_i_data <= x"10";
        worker28_i_data <= x"11";
        worker29_i_data <= x"12";
        worker30_i_data <= x"13";
        worker31_i_data <= x"14";
        worker32_i_data <= x"15";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"17";
        worker2_i_data  <= x"18";
        worker3_i_data  <= x"19";
        worker4_i_data  <= x"1A";
        worker5_i_data  <= x"1B";
        worker6_i_data  <= x"1C";
        worker7_i_data  <= x"1D";
        worker8_i_data  <= x"1E";
        worker9_i_data  <= x"1F";
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
        worker17_i_data  <= x"07";
        worker18_i_data  <= x"08";
        worker19_i_data  <= x"09";
        worker20_i_data  <= x"0A";
        worker21_i_data  <= x"0B";
        worker22_i_data  <= x"0C";
        worker23_i_data  <= x"0D";
        worker24_i_data  <= x"0E";
        worker25_i_data  <= x"0F";
        worker26_i_data <= x"10";
        worker27_i_data <= x"11";
        worker28_i_data <= x"12";
        worker29_i_data <= x"13";
        worker30_i_data <= x"14";
        worker31_i_data <= x"15";
        worker32_i_data <= x"16";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"18";
        worker2_i_data  <= x"19";
        worker3_i_data  <= x"1A";
        worker4_i_data  <= x"1B";
        worker5_i_data  <= x"1C";
        worker6_i_data  <= x"1D";
        worker7_i_data  <= x"1E";
        worker8_i_data  <= x"1F";
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
        worker17_i_data  <= x"08";
        worker18_i_data  <= x"09";
        worker19_i_data  <= x"0A";
        worker20_i_data  <= x"0B";
        worker21_i_data  <= x"0C";
        worker22_i_data  <= x"0D";
        worker23_i_data  <= x"0E";
        worker24_i_data  <= x"0F";
        worker25_i_data  <= x"10";
        worker26_i_data <= x"11";
        worker27_i_data <= x"12";
        worker28_i_data <= x"13";
        worker29_i_data <= x"14";
        worker30_i_data <= x"15";
        worker31_i_data <= x"16";
        worker32_i_data <= x"17";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"19";
        worker2_i_data  <= x"1A";
        worker3_i_data  <= x"1B";
        worker4_i_data  <= x"1C";
        worker5_i_data  <= x"1D";
        worker6_i_data  <= x"1E";
        worker7_i_data  <= x"1F";
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
        worker17_i_data  <= x"09";
        worker18_i_data  <= x"0A";
        worker19_i_data  <= x"0B";
        worker20_i_data  <= x"0C";
        worker21_i_data  <= x"0D";
        worker22_i_data  <= x"0E";
        worker23_i_data  <= x"0F";
        worker24_i_data  <= x"10";
        worker25_i_data  <= x"11";
        worker26_i_data <= x"12";
        worker27_i_data <= x"13";
        worker28_i_data <= x"14";
        worker29_i_data <= x"15";
        worker30_i_data <= x"16";
        worker31_i_data <= x"17";
        worker32_i_data <= x"18";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1A";
        worker2_i_data  <= x"1B";
        worker3_i_data  <= x"1C";
        worker4_i_data  <= x"1D";
        worker5_i_data  <= x"1E";
        worker6_i_data  <= x"1F";
        worker7_i_data  <= x"00";
        worker8_i_data  <= x"01";
        worker9_i_data  <= x"02";
        worker10_i_data <= x"03";
        worker11_i_data <= x"04";
        worker12_i_data <= x"05";
        worker13_i_data <= x"06";
        worker14_i_data <= x"07";
        worker15_i_data <= x"08";
        worker16_i_data <= x"09";
        worker17_i_data  <= x"0A";
        worker18_i_data  <= x"0B";
        worker19_i_data  <= x"0C";
        worker20_i_data  <= x"0D";
        worker21_i_data  <= x"0E";
        worker22_i_data  <= x"0F";
        worker23_i_data  <= x"10";
        worker24_i_data  <= x"11";
        worker25_i_data  <= x"12";
        worker26_i_data <= x"13";
        worker27_i_data <= x"14";
        worker28_i_data <= x"15";
        worker29_i_data <= x"16";
        worker30_i_data <= x"17";
        worker31_i_data <= x"18";
        worker32_i_data <= x"19";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1B";
        worker2_i_data  <= x"1C";
        worker3_i_data  <= x"1D";
        worker4_i_data  <= x"1E";
        worker5_i_data  <= x"1F";
        worker6_i_data  <= x"00";
        worker7_i_data  <= x"01";
        worker8_i_data  <= x"02";
        worker9_i_data  <= x"03";
        worker10_i_data <= x"04";
        worker11_i_data <= x"05";
        worker12_i_data <= x"06";
        worker13_i_data <= x"07";
        worker14_i_data <= x"08";
        worker15_i_data <= x"09";
        worker16_i_data <= x"0A";
        worker17_i_data  <= x"0B";
        worker18_i_data  <= x"0C";
        worker19_i_data  <= x"0D";
        worker20_i_data  <= x"0E";
        worker21_i_data  <= x"0F";
        worker22_i_data  <= x"10";
        worker23_i_data  <= x"11";
        worker24_i_data  <= x"12";
        worker25_i_data  <= x"13";
        worker26_i_data <= x"14";
        worker27_i_data <= x"15";
        worker28_i_data <= x"16";
        worker29_i_data <= x"17";
        worker30_i_data <= x"18";
        worker31_i_data <= x"19";
        worker32_i_data <= x"1A";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1C";
        worker2_i_data  <= x"1D";
        worker3_i_data  <= x"1E";
        worker4_i_data  <= x"1F";
        worker5_i_data  <= x"00";
        worker6_i_data  <= x"01";
        worker7_i_data  <= x"02";
        worker8_i_data  <= x"03";
        worker9_i_data  <= x"04";
        worker10_i_data <= x"05";
        worker11_i_data <= x"06";
        worker12_i_data <= x"07";
        worker13_i_data <= x"08";
        worker14_i_data <= x"09";
        worker15_i_data <= x"0A";
        worker16_i_data <= x"0B";
        worker17_i_data  <= x"0C";
        worker18_i_data  <= x"0D";
        worker19_i_data  <= x"0E";
        worker20_i_data  <= x"0F";
        worker21_i_data  <= x"10";
        worker22_i_data  <= x"11";
        worker23_i_data  <= x"12";
        worker24_i_data  <= x"13";
        worker25_i_data  <= x"14";
        worker26_i_data <= x"15";
        worker27_i_data <= x"16";
        worker28_i_data <= x"17";
        worker29_i_data <= x"18";
        worker30_i_data <= x"19";
        worker31_i_data <= x"1A";
        worker32_i_data <= x"1B";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1D";
        worker2_i_data  <= x"1E";
        worker3_i_data  <= x"1F";
        worker4_i_data  <= x"00";
        worker5_i_data  <= x"01";
        worker6_i_data  <= x"02";
        worker7_i_data  <= x"03";
        worker8_i_data  <= x"04";
        worker9_i_data  <= x"05";
        worker10_i_data <= x"06";
        worker11_i_data <= x"07";
        worker12_i_data <= x"08";
        worker13_i_data <= x"09";
        worker14_i_data <= x"0A";
        worker15_i_data <= x"0B";
        worker16_i_data <= x"0C";
        worker17_i_data  <= x"0D";
        worker18_i_data  <= x"0E";
        worker19_i_data  <= x"0F";
        worker20_i_data  <= x"10";
        worker21_i_data  <= x"11";
        worker22_i_data  <= x"12";
        worker23_i_data  <= x"13";
        worker24_i_data  <= x"14";
        worker25_i_data  <= x"15";
        worker26_i_data <= x"16";
        worker27_i_data <= x"17";
        worker28_i_data <= x"18";
        worker29_i_data <= x"19";
        worker30_i_data <= x"1A";
        worker31_i_data <= x"1B";
        worker32_i_data <= x"1C";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1E";
        worker2_i_data  <= x"1F";
        worker3_i_data  <= x"00";
        worker4_i_data  <= x"01";
        worker5_i_data  <= x"02";
        worker6_i_data  <= x"03";
        worker7_i_data  <= x"04";
        worker8_i_data  <= x"05";
        worker9_i_data  <= x"06";
        worker10_i_data <= x"07";
        worker11_i_data <= x"08";
        worker12_i_data <= x"09";
        worker13_i_data <= x"0A";
        worker14_i_data <= x"0B";
        worker15_i_data <= x"0C";
        worker16_i_data <= x"0D";
        worker17_i_data  <= x"0E";
        worker18_i_data  <= x"0F";
        worker19_i_data  <= x"10";
        worker20_i_data  <= x"11";
        worker21_i_data  <= x"12";
        worker22_i_data  <= x"13";
        worker23_i_data  <= x"14";
        worker24_i_data  <= x"15";
        worker25_i_data  <= x"16";
        worker26_i_data <= x"17";
        worker27_i_data <= x"18";
        worker28_i_data <= x"19";
        worker29_i_data <= x"1A";
        worker30_i_data <= x"1B";
        worker31_i_data <= x"1C";
        worker32_i_data <= x"1D";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- ADD     s0,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- SUB     sF,     01
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- FETCH   s0,     (sF)
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data
        worker1_i_data  <= x"1F";
        worker2_i_data  <= x"00";
        worker3_i_data  <= x"01";
        worker4_i_data  <= x"02";
        worker5_i_data  <= x"03";
        worker6_i_data  <= x"04";
        worker7_i_data  <= x"05";
        worker8_i_data  <= x"06";
        worker9_i_data  <= x"07";
        worker10_i_data <= x"08";
        worker11_i_data <= x"09";
        worker12_i_data <= x"0A";
        worker13_i_data <= x"0B";
        worker14_i_data <= x"0C";
        worker15_i_data <= x"0D";
        worker16_i_data <= x"0E";
        worker17_i_data  <= x"0F";
        worker18_i_data  <= x"10";
        worker19_i_data  <= x"11";
        worker20_i_data  <= x"12";
        worker21_i_data  <= x"13";
        worker22_i_data  <= x"14";
        worker23_i_data  <= x"15";
        worker24_i_data  <= x"16";
        worker25_i_data  <= x"17";
        worker26_i_data <= x"18";
        worker27_i_data <= x"19";
        worker28_i_data <= x"1A";
        worker29_i_data <= x"1B";
        worker30_i_data <= x"1C";
        worker31_i_data <= x"1D";
        worker32_i_data <= x"1E";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- COMPARE sF,     00
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop
        wait until rising_edge(clk);

        wait until rising_edge(clk); -- OUTPUTK cmd_send_done, op_self_status
        worker1_i_stat  <= "010000";
        worker2_i_stat  <= "010000";
        worker3_i_stat  <= "010000";
        worker4_i_stat  <= "010000";
        worker5_i_stat  <= "010000";
        worker6_i_stat  <= "010000";
        worker7_i_stat  <= "010000";
        worker8_i_stat  <= "010000";
        worker9_i_stat  <= "010000";
        worker10_i_stat <= "010000";
        worker11_i_stat <= "010000";
        worker12_i_stat <= "010000";
        worker13_i_stat <= "010000";
        worker14_i_stat <= "010000";
        worker15_i_stat <= "010000";
        worker16_i_stat <= "010000";
        worker17_i_stat  <= "010000";
        worker18_i_stat  <= "010000";
        worker19_i_stat  <= "010000";
        worker20_i_stat  <= "010000";
        worker21_i_stat  <= "010000";
        worker22_i_stat  <= "010000";
        worker23_i_stat  <= "010000";
        worker24_i_stat  <= "010000";
        worker25_i_stat  <= "010000";
        worker26_i_stat <= "010000";
        worker27_i_stat <= "010000";
        worker28_i_stat <= "010000";
        worker29_i_stat <= "010000";
        worker30_i_stat <= "010000";
        worker31_i_stat <= "010000";
        worker32_i_stat <= "010000";
        wait until rising_edge(clk);
        wait until rising_edge(clk); -- OUTPUTK 00,  op_self_status
        worker1_i_stat  <= "000000";
        worker2_i_stat  <= "000000";
        worker3_i_stat  <= "000000";
        worker4_i_stat  <= "000000";
        worker5_i_stat  <= "000000";
        worker6_i_stat  <= "000000";
        worker7_i_stat  <= "000000";
        worker8_i_stat  <= "000000";
        worker9_i_stat  <= "000000";
        worker10_i_stat <= "000000";
        worker11_i_stat <= "000000";
        worker12_i_stat <= "000000";
        worker13_i_stat <= "000000";
        worker14_i_stat <= "000000";
        worker15_i_stat <= "000000";
        worker16_i_stat <= "000000";
        worker17_i_stat  <= "000000";
        worker18_i_stat  <= "000000";
        worker19_i_stat  <= "000000";
        worker20_i_stat  <= "000000";
        worker21_i_stat  <= "000000";
        worker22_i_stat  <= "000000";
        worker23_i_stat  <= "000000";
        worker24_i_stat  <= "000000";
        worker25_i_stat  <= "000000";
        worker26_i_stat <= "000000";
        worker27_i_stat <= "000000";
        worker28_i_stat <= "000000";
        worker29_i_stat <= "000000";
        worker30_i_stat <= "000000";
        worker31_i_stat <= "000000";
        worker32_i_stat <= "000000";
        wait until rising_edge(clk);

        wait for 2000 ms;
    end process simulate;
end behavioral;
