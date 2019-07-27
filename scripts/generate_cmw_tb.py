
def gen_tb():
    print('wait until rising_edge(clk);')
    print()
    print('worker1_i_stat  <= "100000";')
    print('worker2_i_stat  <= "100000";')
    print('worker3_i_stat  <= "100000";')
    print('worker4_i_stat  <= "100000";')
    print('worker5_i_stat  <= "100000";')
    print('worker6_i_stat  <= "100000";')
    print('worker7_i_stat  <= "100000";')
    print('worker8_i_stat  <= "100000";')
    print('worker9_i_stat  <= "100000";')
    print('worker10_i_stat <= "100000";')
    print('worker11_i_stat <= "100000";')
    print('worker12_i_stat <= "100000";')
    print('worker13_i_stat <= "100000";')
    print('worker14_i_stat <= "100000";')
    print('worker15_i_stat <= "100000";')
    print('worker16_i_stat <= "100000";')
    print()
    print('wait until (worker1_o_stat = "10000000" and')
    print('            worker2_o_stat = "10000000" and')
    print('            worker3_o_stat = "10000000" and')
    print('            worker4_o_stat = "10000000" and')
    print('            worker5_o_stat = "10000000" and')
    print('            worker6_o_stat = "10000000" and')
    print('            worker7_o_stat = "10000000" and')
    print('            worker8_o_stat = "10000000" and')
    print('            worker9_o_stat = "10000000" and')
    print('            worker10_o_stat = "10000000" and')
    print('            worker11_o_stat = "10000000" and')
    print('            worker12_o_stat = "10000000" and')
    print('            worker13_o_stat = "10000000" and')
    print('            worker14_o_stat = "10000000" and')
    print('            worker15_o_stat = "10000000" and')
    print('            worker16_o_stat = "10000000");')
    print()
    print('wait until rising_edge(clk); -- needed for the processor to wake up')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print()
    print('wait until rising_edge(clk); -- OUTPUTK 00,     op_self_status')
    print('worker1_i_stat  <= "000000";')
    print('worker2_i_stat  <= "000000";')
    print('worker3_i_stat  <= "000000";')
    print('worker4_i_stat  <= "000000";')
    print('worker5_i_stat  <= "000000";')
    print('worker6_i_stat  <= "000000";')
    print('worker7_i_stat  <= "000000";')
    print('worker8_i_stat  <= "000000";')
    print('worker9_i_stat  <= "000000";')
    print('worker10_i_stat <= "000000";')
    print('worker11_i_stat <= "000000";')
    print('worker12_i_stat <= "000000";')
    print('worker13_i_stat <= "000000";')
    print('worker14_i_stat <= "000000";')
    print('worker15_i_stat <= "000000";')
    print('worker16_i_stat <= "000000";')
    print('wait until rising_edge(clk);')
    print()

    for i in range(64):
        print('wait until rising_edge(clk); -- ADD     s0,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- SUB     sF,     01')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- FETCH   s0,     (sF)')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data')
        print('worker1_i_data  <= x"' + format((i + 0) % 16, '02X') + '";')
        print('worker2_i_data  <= x"' + format((i + 1) % 16, '02X') + '";')
        print('worker3_i_data  <= x"' + format((i + 2) % 16, '02X') + '";')
        print('worker4_i_data  <= x"' + format((i + 3) % 16, '02X') + '";')
        print('worker5_i_data  <= x"' + format((i + 4) % 16, '02X') + '";')
        print('worker6_i_data  <= x"' + format((i + 5) % 16, '02X') + '";')
        print('worker7_i_data  <= x"' + format((i + 6) % 16, '02X') + '";')
        print('worker8_i_data  <= x"' + format((i + 7) % 16, '02X') + '";')
        print('worker9_i_data  <= x"' + format((i + 8) % 16, '02X') + '";')
        print('worker10_i_data <= x"' + format((i + 9) % 16, '02X') + '";')
        print('worker11_i_data <= x"' + format((i + 10) % 16, '02X') + '";')
        print('worker12_i_data <= x"' + format((i + 11) % 16, '02X') + '";')
        print('worker13_i_data <= x"' + format((i + 12) % 16, '02X') + '";')
        print('worker14_i_data <= x"' + format((i + 13) % 16, '02X') + '";')
        print('worker15_i_data <= x"' + format((i + 14) % 16, '02X') + '";')
        print('worker16_i_data <= x"' + format((i + 15) % 16, '02X') + '";')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- COMPARE sF,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop')
        print('wait until rising_edge(clk);')
        print()

    print('wait until rising_edge(clk);')
    print()
    print('worker1_i_stat  <= "100000";')
    print('worker2_i_stat  <= "100000";')
    print('worker3_i_stat  <= "100000";')
    print('worker4_i_stat  <= "100000";')
    print('worker5_i_stat  <= "100000";')
    print('worker6_i_stat  <= "100000";')
    print('worker7_i_stat  <= "100000";')
    print('worker8_i_stat  <= "100000";')
    print('worker9_i_stat  <= "100000";')
    print('worker10_i_stat <= "100000";')
    print('worker11_i_stat <= "100000";')
    print('worker12_i_stat <= "100000";')
    print('worker13_i_stat <= "100000";')
    print('worker14_i_stat <= "100000";')
    print('worker15_i_stat <= "100000";')
    print('worker16_i_stat <= "100000";')
    print()
    print('wait until (worker1_o_stat = "10000000" and')
    print('            worker2_o_stat = "10000000" and')
    print('            worker3_o_stat = "10000000" and')
    print('            worker4_o_stat = "10000000" and')
    print('            worker5_o_stat = "10000000" and')
    print('            worker6_o_stat = "10000000" and')
    print('            worker7_o_stat = "10000000" and')
    print('            worker8_o_stat = "10000000" and')
    print('            worker9_o_stat = "10000000" and')
    print('            worker10_o_stat = "10000000" and')
    print('            worker11_o_stat = "10000000" and')
    print('            worker12_o_stat = "10000000" and')
    print('            worker13_o_stat = "10000000" and')
    print('            worker14_o_stat = "10000000" and')
    print('            worker15_o_stat = "10000000" and')
    print('            worker16_o_stat = "10000000");')
    print()
    print('wait until rising_edge(clk); -- needed for the processor to wake up')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print()
    print('wait until rising_edge(clk); -- OUTPUTK 00,     op_self_status')
    print('worker1_i_stat  <= "000000";')
    print('worker2_i_stat  <= "000000";')
    print('worker3_i_stat  <= "000000";')
    print('worker4_i_stat  <= "000000";')
    print('worker5_i_stat  <= "000000";')
    print('worker6_i_stat  <= "000000";')
    print('worker7_i_stat  <= "000000";')
    print('worker8_i_stat  <= "000000";')
    print('worker9_i_stat  <= "000000";')
    print('worker10_i_stat <= "000000";')
    print('worker11_i_stat <= "000000";')
    print('worker12_i_stat <= "000000";')
    print('worker13_i_stat <= "000000";')
    print('worker14_i_stat <= "000000";')
    print('worker15_i_stat <= "000000";')
    print('worker16_i_stat <= "000000";')
    print('wait until rising_edge(clk);')
    print()


gen_tb()
