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
            wrk16_o_stat  : out std_logic_vector(7 downto 0)
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
begin
    sim_clk_gen : sim_clk
        generic map (REPORT_TIME => 1 us)
        port map (clk_out => clk);

    UUT : core_msa_wrapper
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
            wrk16_o_stat => worker16_o_stat
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
                    worker16_o_stat = "10000000");

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
        worker16_i_data <= x"00";
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
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
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
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
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
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
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
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
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
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
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
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
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
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
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
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
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
        worker16_i_data <= x"00";
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
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
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
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
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
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
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
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
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
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
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
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
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
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
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
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
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
        worker16_i_data <= x"00";
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
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
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
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
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
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
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
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
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
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
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
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
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
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
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
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
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
        worker16_i_data <= x"00";
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
        worker15_i_data <= x"00";
        worker16_i_data <= x"01";
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
        worker14_i_data <= x"00";
        worker15_i_data <= x"01";
        worker16_i_data <= x"02";
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
        worker13_i_data <= x"00";
        worker14_i_data <= x"01";
        worker15_i_data <= x"02";
        worker16_i_data <= x"03";
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
        worker12_i_data <= x"00";
        worker13_i_data <= x"01";
        worker14_i_data <= x"02";
        worker15_i_data <= x"03";
        worker16_i_data <= x"04";
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
        worker11_i_data <= x"00";
        worker12_i_data <= x"01";
        worker13_i_data <= x"02";
        worker14_i_data <= x"03";
        worker15_i_data <= x"04";
        worker16_i_data <= x"05";
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
        worker10_i_data <= x"00";
        worker11_i_data <= x"01";
        worker12_i_data <= x"02";
        worker13_i_data <= x"03";
        worker14_i_data <= x"04";
        worker15_i_data <= x"05";
        worker16_i_data <= x"06";
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
        worker9_i_data  <= x"00";
        worker10_i_data <= x"01";
        worker11_i_data <= x"02";
        worker12_i_data <= x"03";
        worker13_i_data <= x"04";
        worker14_i_data <= x"05";
        worker15_i_data <= x"06";
        worker16_i_data <= x"07";
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
        worker8_i_data  <= x"00";
        worker9_i_data  <= x"01";
        worker10_i_data <= x"02";
        worker11_i_data <= x"03";
        worker12_i_data <= x"04";
        worker13_i_data <= x"05";
        worker14_i_data <= x"06";
        worker15_i_data <= x"07";
        worker16_i_data <= x"08";
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
        wait until rising_edge(clk);

        wait for 2000 ms;
    end process simulate;
end behavioral;
