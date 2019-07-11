--
-------------------------------------------------------------------------------------------
-- Copyright © 2010-2013, Xilinx, Inc.
-- This file contains confidential and proprietary information of Xilinx, Inc. and is
-- protected under U.S. and international copyright and other intellectual property laws.
-------------------------------------------------------------------------------------------
--
-- Disclaimer:
-- This disclaimer is not a license and does not grant any rights to the materials
-- distributed herewith. Except as otherwise provided in a valid license issued to
-- you by Xilinx, and to the maximum extent permitted by applicable law: (1) THESE
-- MATERIALS ARE MADE AVAILABLE "AS IS" AND WITH ALL FAULTS, AND XILINX HEREBY
-- DISCLAIMS ALL WARRANTIES AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY,
-- INCLUDING BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-INFRINGEMENT,
-- OR FITNESS FOR ANY PARTICULAR PURPOSE; and (2) Xilinx shall not be liable
-- (whether in contract or tort, including negligence, or under any other theory
-- of liability) for any loss or damage of any kind or nature related to, arising
-- under or in connection with these materials, including for any direct, or any
-- indirect, special, incidental, or consequential loss or damage (including loss
-- of data, profits, goodwill, or any type of loss or damage suffered as a result
-- of any action brought by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the possibility of the same.
--
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-safe, or for use in any
-- application requiring fail-safe performance, such as life-support or safety
-- devices or systems, Class III medical devices, nuclear facilities, applications
-- related to the deployment of airbags, or any other applications that could lead
-- to death, personal injury, or severe property or environmental damage
-- (individually and collectively, "Critical Applications"). Customer assumes the
-- sole risk and liability of any use of Xilinx products in Critical Applications,
-- subject only to applicable laws and regulations governing limitations on product
-- liability.
--
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS PART OF THIS FILE AT ALL TIMES.
--
-------------------------------------------------------------------------------------------
--
--
-- Definition of a program memory for KCPSM6 including generic parameters for the 
-- convenient selection of device family, program memory size and the ability to include 
-- the JTAG Loader hardware for rapid software development.
--
-- This file is primarily for use during code development and it is recommended that the 
-- appropriate simplified program memory definition be used in a final production design. 
--
--    Generic                  Values             Comments
--    Parameter                Supported
--  
--    C_FAMILY                 "S6"               Spartan-6 device
--                             "V6"               Virtex-6 device
--                             "7S"               7-Series device 
--                                                  (Artix-7, Kintex-7, Virtex-7 or Zynq)
--
--    C_RAM_SIZE_KWORDS        1, 2 or 4          Size of program memory in K-instructions
--
--    C_JTAG_LOADER_ENABLE     0 or 1             Set to '1' to include JTAG Loader
--
-- Notes
--
-- If your design contains MULTIPLE KCPSM6 instances then only one should have the 
-- JTAG Loader enabled at a time (i.e. make sure that C_JTAG_LOADER_ENABLE is only set to 
-- '1' on one instance of the program memory). Advanced users may be interested to know 
-- that it is possible to connect JTAG Loader to multiple memories and then to use the 
-- JTAG Loader utility to specify which memory contents are to be modified. However, 
-- this scheme does require some effort to set up and the additional connectivity of the 
-- multiple BRAMs can impact the placement, routing and performance of the complete 
-- design. Please contact the author at Xilinx for more detailed information. 
--
-- Regardless of the size of program memory specified by C_RAM_SIZE_KWORDS, the complete 
-- 12-bit address bus is connected to KCPSM6. This enables the generic to be modified 
-- without requiring changes to the fundamental hardware definition. However, when the 
-- program memory is 1K then only the lower 10-bits of the address are actually used and 
-- the valid address range is 000 to 3FF hex. Likewise, for a 2K program only the lower 
-- 11-bits of the address are actually used and the valid address range is 000 to 7FF hex.
--
-- Programs are stored in Block Memory (BRAM) and the number of BRAM used depends on the 
-- size of the program and the device family. 
--
-- In a Spartan-6 device a BRAM is capable of holding 1K instructions. Hence a 2K program 
-- will require 2 BRAMs to be used and a 4K program will require 4 BRAMs to be used. It 
-- should be noted that a 4K program is not such a natural fit in a Spartan-6 device and 
-- the implementation also requires a small amount of logic resulting in slightly lower 
-- performance. A Spartan-6 BRAM can also be split into two 9k-bit memories suggesting 
-- that a program containing up to 512 instructions could be implemented. However, there 
-- is a silicon errata which makes this unsuitable and therefore it is not supported by 
-- this file.
--
-- In a Virtex-6 or any 7-Series device a BRAM is capable of holding 2K instructions so 
-- obviously a 2K program requires only a single BRAM. Each BRAM can also be divided into 
-- 2 smaller memories supporting programs of 1K in half of a 36k-bit BRAM (generally 
-- reported as being an 18k-bit BRAM). For a program of 4K instructions, 2 BRAMs are used.
--
--
-- Program defined by 'C:\Users\grego\Projects\fpga\fpga_miner_rework\atom_proj\src\psm\core\core.psm'.
--
-- Generated by KCPSM6 Assembler: 11 Jul 2019 - 18:36:16. 
--
-- Assembler used ROM_form template: ROM_form_JTAGLoader_14March13.vhd
--
-- Standard IEEE libraries
--
--
package jtag_loader_pkg is
 function addr_width_calc (size_in_k: integer) return integer;
end jtag_loader_pkg;
--
package body jtag_loader_pkg is
  function addr_width_calc (size_in_k: integer) return integer is
   begin
    if (size_in_k = 1) then return 10;
      elsif (size_in_k = 2) then return 11;
      elsif (size_in_k = 4) then return 12;
      else report "Invalid BlockRAM size. Please set to 1, 2 or 4 K words." severity FAILURE;
    end if;
    return 0;
  end function addr_width_calc;
end package body;
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use work.jtag_loader_pkg.ALL;
--
-- The Unisim Library is used to define Xilinx primitives. It is also used during
-- simulation. The source can be viewed at %XILINX%\vhdl\src\unisims\unisim_VCOMP.vhd
--  
library unisim;
use unisim.vcomponents.all;
--
--
entity core_prog is
    generic(    C_FAMILY          : string  := "S6"; 
                C_RAM_SIZE_KWORDS : integer := 1);
              
    port (      address     : in std_logic_vector(11 downto 0);
                instruction : out std_logic_vector(17 downto 0);
                enable      : in std_logic;               
                clk         : in std_logic;
                  
                address_b    : in std_logic_vector(15 downto 0);
                data_in_b    : in std_logic_vector(31 downto 0);
                parity_in_b  : in std_logic_vector(3 downto 0);
                data_out_b   : out std_logic_vector(31 downto 0);
                parity_out_b : out std_logic_vector(3 downto 0);
                enable_b     : in std_logic;
                we_b         : in std_logic_vector(3 downto 0));
  end core_prog;
  
architecture low_level_definition of core_prog is
    signal address_a  : std_logic_vector(15 downto 0);
    signal pipe_a11   : std_logic;
    signal data_in_a  : std_logic_vector(35 downto 0);
    signal data_out_a : std_logic_vector(35 downto 0);
    signal we_b_val   : std_logic_vector(7 downto 0);
    
    constant BRAM_ADDRESS_WIDTH  : integer := addr_width_calc(C_RAM_SIZE_KWORDS);
begin
    ram_2k_generate : if (C_RAM_SIZE_KWORDS = 2) generate
        akv7 : if (C_FAMILY = "7S") generate
            address_a   <= '1' & address(10 downto 0) & "1111";
            instruction <= data_out_a(33 downto 32) & data_out_a(15 downto 0);
            data_in_a   <= "00000000000000000000000000000000000" & address(11);
            we_b_val    <= "0000" & we_b;
            kcpsm6_rom: RAMB36E1
                generic map (   READ_WIDTH_A => 18,
                                WRITE_WIDTH_A => 18,
                                DOA_REG => 0,
                                INIT_A => X"000000000",
                                RSTREG_PRIORITY_A => "REGCE",
                                SRVAL_A => X"000000000",
                                WRITE_MODE_A => "WRITE_FIRST",
                                READ_WIDTH_B => 18,
                                WRITE_WIDTH_B => 18,
                                DOB_REG => 0,
                                INIT_B => X"000000000",
                                RSTREG_PRIORITY_B => "REGCE",
                                SRVAL_B => X"000000000",
                                WRITE_MODE_B => "WRITE_FIRST",
                                INIT_FILE => "NONE",
                                SIM_COLLISION_CHECK => "ALL",
                                RAM_MODE => "TDP",
                                RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
                                EN_ECC_READ => FALSE,
                                EN_ECC_WRITE => FALSE,
                                RAM_EXTENSION_A => "NONE",
                                RAM_EXTENSION_B => "NONE",
                                SIM_DEVICE => "7SERIES",
                                
                                INIT_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_0F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_10 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_11 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_12 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_13 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_14 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_15 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_16 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_2F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_30 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_31 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_32 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_33 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_34 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_35 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_36 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_37 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_38 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_39 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_3F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_40 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_41 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_42 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_43 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_44 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_45 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_46 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_47 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_48 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_49 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_4F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_50 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_51 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_52 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_53 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_54 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_55 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_56 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_57 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_58 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_59 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_5F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_60 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_61 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_62 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_63 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_64 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_65 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_66 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_67 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_68 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_69 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_6F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_70 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_71 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_72 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_73 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_74 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_75 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_76 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_77 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_78 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_79 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INIT_7F => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_00 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_01 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_02 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_05 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_06 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_07 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_08 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_09 => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0A => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0B => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0C => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0D => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0E => X"0000000000000000000000000000000000000000000000000000000000000000",
                                INITP_0F => X"0000000000000000000000000000000000000000000000000000000000000000")
                                
                port map(   ADDRARDADDR => address_a,
                            ENARDEN => enable,
                            CLKARDCLK => clk,
                            DOADO => data_out_a(31 downto 0),
                            DOPADOP => data_out_a(35 downto 32), 
                            DIADI => data_in_a(31 downto 0),
                            DIPADIP => data_in_a(35 downto 32), 
                            WEA => "0000",
                            REGCEAREGCE => '0',
                            RSTRAMARSTRAM => '0',
                            RSTREGARSTREG => '0',
                            ADDRBWRADDR => address_b,
                            ENBWREN => enable_b,
                            CLKBWRCLK => clk,
                            DOBDO => data_out_b,
                            DOPBDOP => parity_out_b,
                            DIBDI => data_in_b,
                            DIPBDIP => parity_in_b, 
                            WEBWE => we_b_val,
                            REGCEB => '0',
                            RSTRAMB => '0',
                            RSTREGB => '0',
                            CASCADEINA => '0',
                            CASCADEINB => '0',
                            INJECTDBITERR => '0',
                            INJECTSBITERR => '0');
        end generate akv7;
    end generate ram_2k_generate;
    
end low_level_definition;
