--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
--Date        : Sun Apr 10 18:08:56 2022
--Host        : DESKTOP-OR8CU7N running 64-bit major release  (build 9200)
--Command     : generate_target pcie_block_wrapper.bd
--Design      : pcie_block_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pcie_block_wrapper is
  port (
    M_AVALON_0_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AVALON_0_beginbursttransfer : out STD_LOGIC;
    M_AVALON_0_burstcount : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AVALON_0_read : out STD_LOGIC;
    M_AVALON_0_readdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AVALON_0_readdatavalid : in STD_LOGIC;
    M_AVALON_0_waitrequest : in STD_LOGIC;
    M_AVALON_0_write : out STD_LOGIC;
    M_AVALON_0_writedata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clock_out_62_5 : out STD_LOGIC;
    ext_reset_in_0 : in STD_LOGIC;
    pcie_7x_mgt_0_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    reset_pce_out : out STD_LOGIC;
    slowest_sync_clk_0 : in STD_LOGIC
  );
end pcie_block_wrapper;

architecture STRUCTURE of pcie_block_wrapper is
  component pcie_block is
  port (
    ext_reset_in_0 : in STD_LOGIC;
    slowest_sync_clk_0 : in STD_LOGIC;
    pcie_7x_mgt_0_rxn : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_rxp : in STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txn : out STD_LOGIC_VECTOR ( 0 to 0 );
    pcie_7x_mgt_0_txp : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AVALON_0_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AVALON_0_beginbursttransfer : out STD_LOGIC;
    M_AVALON_0_burstcount : out STD_LOGIC_VECTOR ( 8 downto 0 );
    M_AVALON_0_read : out STD_LOGIC;
    M_AVALON_0_readdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    M_AVALON_0_readdatavalid : in STD_LOGIC;
    M_AVALON_0_waitrequest : in STD_LOGIC;
    M_AVALON_0_write : out STD_LOGIC;
    M_AVALON_0_writedata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    clock_out_62_5 : out STD_LOGIC;
    reset_pce_out : out STD_LOGIC
  );
  end component pcie_block;
begin
pcie_block_i: component pcie_block
     port map (
      M_AVALON_0_address(31 downto 0) => M_AVALON_0_address(31 downto 0),
      M_AVALON_0_beginbursttransfer => M_AVALON_0_beginbursttransfer,
      M_AVALON_0_burstcount(8 downto 0) => M_AVALON_0_burstcount(8 downto 0),
      M_AVALON_0_read => M_AVALON_0_read,
      M_AVALON_0_readdata(63 downto 0) => M_AVALON_0_readdata(63 downto 0),
      M_AVALON_0_readdatavalid => M_AVALON_0_readdatavalid,
      M_AVALON_0_waitrequest => M_AVALON_0_waitrequest,
      M_AVALON_0_write => M_AVALON_0_write,
      M_AVALON_0_writedata(63 downto 0) => M_AVALON_0_writedata(63 downto 0),
      clock_out_62_5 => clock_out_62_5,
      ext_reset_in_0 => ext_reset_in_0,
      pcie_7x_mgt_0_rxn(0) => pcie_7x_mgt_0_rxn(0),
      pcie_7x_mgt_0_rxp(0) => pcie_7x_mgt_0_rxp(0),
      pcie_7x_mgt_0_txn(0) => pcie_7x_mgt_0_txn(0),
      pcie_7x_mgt_0_txp(0) => pcie_7x_mgt_0_txp(0),
      reset_pce_out => reset_pce_out,
      slowest_sync_clk_0 => slowest_sync_clk_0
    );
end STRUCTURE;
