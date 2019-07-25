tb_data = ['74686973',
        '20697320',
        '61207465',
        '7374206D',
        '75746861',
        '6675636B',
        '61800000',
        '00000000',
        '00000000',
        '00000000',
        '00000000',
        '00000000',
        '00000000',
        '00000000',
        '00000000',
        '000000C8']

def gen_tb(data):
    print('wait until rising_edge(clk);')
    print()
    print('core_status_in <= "10000000";')
    print()
    print('wait until core_status_out = "10000000";')
    print('wait until rising_edge(clk); -- needed for the processor to wake up')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk);')
    print()
    print('wait until rising_edge(clk); -- OUTPUTK 00,     op_self_status')
    print('core_status_in <= "00000000";')
    print('wait until rising_edge(clk);')
    print()

    for d in reversed(data):
        print('wait until rising_edge(clk); -- ADD     s0,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- SUB     sF,     01')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- FETCH   s0,     (sF)')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data')
        print('core_data_in <= x"' + d[6:8] + '";')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- COMPARE sF,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop')
        print('wait until rising_edge(clk);')
        print()

        print('wait until rising_edge(clk); -- ADD     s0,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- SUB     sF,     01')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- FETCH   s0,     (sF)')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data')
        print('core_data_in <= x"' + d[4:6] + '";')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- COMPARE sF,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop')
        print('wait until rising_edge(clk);')
        print()

        print('wait until rising_edge(clk); -- ADD     s0,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- SUB     sF,     01')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- FETCH   s0,     (sF)')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data')
        print('core_data_in <= x"' + d[2:4] + '";')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- COMPARE sF,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop')
        print('wait until rising_edge(clk);')
        print()

        print('wait until rising_edge(clk); -- ADD     s0,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- SUB     sF,     01')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- FETCH   s0,     (sF)')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- OUTPUT  s0,     op_self_data')
        print('core_data_in <= x"' + d[0:2] + '";')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- COMPARE sF,     00')
        print('wait until rising_edge(clk);')
        print('wait until rising_edge(clk); -- JUMP    NZ,     send_ipc_data_loop')
        print('wait until rising_edge(clk);')
        print()

    print('wait until rising_edge(clk); -- OUTPUTK cmd_send_done, op_self_status')
    print('core_status_in <= "01000000";')
    print('wait until rising_edge(clk);')
    print('wait until rising_edge(clk); -- OUTPUTK 00,     op_self_status')
    print('core_status_in <= "00000000";')
    print('wait until rising_edge(clk);')


gen_tb(tb_data)
