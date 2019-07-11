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

{begin template}


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
-- Program defined by '{psmname}.psm'.
--
-- Generated by KCPSM6 Assembler: {timestamp}. 
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
entity {name} is
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
  end {name};
  
architecture low_level_definition of {name} is

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
                                
                                INIT_00 => X"{INIT_00}",
                                INIT_01 => X"{INIT_01}",
                                INIT_02 => X"{INIT_02}",
                                INIT_03 => X"{INIT_03}",
                                INIT_04 => X"{INIT_04}",
                                INIT_05 => X"{INIT_05}",
                                INIT_06 => X"{INIT_06}",
                                INIT_07 => X"{INIT_07}",
                                INIT_08 => X"{INIT_08}",
                                INIT_09 => X"{INIT_09}",
                                INIT_0A => X"{INIT_0A}",
                                INIT_0B => X"{INIT_0B}",
                                INIT_0C => X"{INIT_0C}",
                                INIT_0D => X"{INIT_0D}",
                                INIT_0E => X"{INIT_0E}",
                                INIT_0F => X"{INIT_0F}",
                                INIT_10 => X"{INIT_10}",
                                INIT_11 => X"{INIT_11}",
                                INIT_12 => X"{INIT_12}",
                                INIT_13 => X"{INIT_13}",
                                INIT_14 => X"{INIT_14}",
                                INIT_15 => X"{INIT_15}",
                                INIT_16 => X"{INIT_16}",
                                INIT_17 => X"{INIT_17}",
                                INIT_18 => X"{INIT_18}",
                                INIT_19 => X"{INIT_19}",
                                INIT_1A => X"{INIT_1A}",
                                INIT_1B => X"{INIT_1B}",
                                INIT_1C => X"{INIT_1C}",
                                INIT_1D => X"{INIT_1D}",
                                INIT_1E => X"{INIT_1E}",
                                INIT_1F => X"{INIT_1F}",
                                INIT_20 => X"{INIT_20}",
                                INIT_21 => X"{INIT_21}",
                                INIT_22 => X"{INIT_22}",
                                INIT_23 => X"{INIT_23}",
                                INIT_24 => X"{INIT_24}",
                                INIT_25 => X"{INIT_25}",
                                INIT_26 => X"{INIT_26}",
                                INIT_27 => X"{INIT_27}",
                                INIT_28 => X"{INIT_28}",
                                INIT_29 => X"{INIT_29}",
                                INIT_2A => X"{INIT_2A}",
                                INIT_2B => X"{INIT_2B}",
                                INIT_2C => X"{INIT_2C}",
                                INIT_2D => X"{INIT_2D}",
                                INIT_2E => X"{INIT_2E}",
                                INIT_2F => X"{INIT_2F}",
                                INIT_30 => X"{INIT_30}",
                                INIT_31 => X"{INIT_31}",
                                INIT_32 => X"{INIT_32}",
                                INIT_33 => X"{INIT_33}",
                                INIT_34 => X"{INIT_34}",
                                INIT_35 => X"{INIT_35}",
                                INIT_36 => X"{INIT_36}",
                                INIT_37 => X"{INIT_37}",
                                INIT_38 => X"{INIT_38}",
                                INIT_39 => X"{INIT_39}",
                                INIT_3A => X"{INIT_3A}",
                                INIT_3B => X"{INIT_3B}",
                                INIT_3C => X"{INIT_3C}",
                                INIT_3D => X"{INIT_3D}",
                                INIT_3E => X"{INIT_3E}",
                                INIT_3F => X"{INIT_3F}",
                                INIT_40 => X"{INIT_40}",
                                INIT_41 => X"{INIT_41}",
                                INIT_42 => X"{INIT_42}",
                                INIT_43 => X"{INIT_43}",
                                INIT_44 => X"{INIT_44}",
                                INIT_45 => X"{INIT_45}",
                                INIT_46 => X"{INIT_46}",
                                INIT_47 => X"{INIT_47}",
                                INIT_48 => X"{INIT_48}",
                                INIT_49 => X"{INIT_49}",
                                INIT_4A => X"{INIT_4A}",
                                INIT_4B => X"{INIT_4B}",
                                INIT_4C => X"{INIT_4C}",
                                INIT_4D => X"{INIT_4D}",
                                INIT_4E => X"{INIT_4E}",
                                INIT_4F => X"{INIT_4F}",
                                INIT_50 => X"{INIT_50}",
                                INIT_51 => X"{INIT_51}",
                                INIT_52 => X"{INIT_52}",
                                INIT_53 => X"{INIT_53}",
                                INIT_54 => X"{INIT_54}",
                                INIT_55 => X"{INIT_55}",
                                INIT_56 => X"{INIT_56}",
                                INIT_57 => X"{INIT_57}",
                                INIT_58 => X"{INIT_58}",
                                INIT_59 => X"{INIT_59}",
                                INIT_5A => X"{INIT_5A}",
                                INIT_5B => X"{INIT_5B}",
                                INIT_5C => X"{INIT_5C}",
                                INIT_5D => X"{INIT_5D}",
                                INIT_5E => X"{INIT_5E}",
                                INIT_5F => X"{INIT_5F}",
                                INIT_60 => X"{INIT_60}",
                                INIT_61 => X"{INIT_61}",
                                INIT_62 => X"{INIT_62}",
                                INIT_63 => X"{INIT_63}",
                                INIT_64 => X"{INIT_64}",
                                INIT_65 => X"{INIT_65}",
                                INIT_66 => X"{INIT_66}",
                                INIT_67 => X"{INIT_67}",
                                INIT_68 => X"{INIT_68}",
                                INIT_69 => X"{INIT_69}",
                                INIT_6A => X"{INIT_6A}",
                                INIT_6B => X"{INIT_6B}",
                                INIT_6C => X"{INIT_6C}",
                                INIT_6D => X"{INIT_6D}",
                                INIT_6E => X"{INIT_6E}",
                                INIT_6F => X"{INIT_6F}",
                                INIT_70 => X"{INIT_70}",
                                INIT_71 => X"{INIT_71}",
                                INIT_72 => X"{INIT_72}",
                                INIT_73 => X"{INIT_73}",
                                INIT_74 => X"{INIT_74}",
                                INIT_75 => X"{INIT_75}",
                                INIT_76 => X"{INIT_76}",
                                INIT_77 => X"{INIT_77}",
                                INIT_78 => X"{INIT_78}",
                                INIT_79 => X"{INIT_79}",
                                INIT_7A => X"{INIT_7A}",
                                INIT_7B => X"{INIT_7B}",
                                INIT_7C => X"{INIT_7C}",
                                INIT_7D => X"{INIT_7D}",
                                INIT_7E => X"{INIT_7E}",
                                INIT_7F => X"{INIT_7F}",
                                INITP_00 => X"{INITP_00}",
                                INITP_01 => X"{INITP_01}",
                                INITP_02 => X"{INITP_02}",
                                INITP_03 => X"{INITP_03}",
                                INITP_04 => X"{INITP_04}",
                                INITP_05 => X"{INITP_05}",
                                INITP_06 => X"{INITP_06}",
                                INITP_07 => X"{INITP_07}",
                                INITP_08 => X"{INITP_08}",
                                INITP_09 => X"{INITP_09}",
                                INITP_0A => X"{INITP_0A}",
                                INITP_0B => X"{INITP_0B}",
                                INITP_0C => X"{INITP_0C}",
                                INITP_0D => X"{INITP_0D}",
                                INITP_0E => X"{INITP_0E}",
                                INITP_0F => X"{INITP_0F}")
                                
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