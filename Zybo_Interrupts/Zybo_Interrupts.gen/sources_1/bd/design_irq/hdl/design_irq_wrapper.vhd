--Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
--Date        : Fri Dec 24 11:25:20 2021
--Host        : msi running 64-bit Debian GNU/Linux 11 (bullseye)
--Command     : generate_target design_irq_wrapper.bd
--Design      : design_irq_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_irq_wrapper is
  port (
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    btn_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_tri_io : inout STD_LOGIC_VECTOR ( 3 downto 0 )
  );
end design_irq_wrapper;

architecture STRUCTURE of design_irq_wrapper is
  component design_irq is
  port (
    btn_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_tri_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    led_tri_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led_tri_t : out STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_cas_n : inout STD_LOGIC;
    DDR_cke : inout STD_LOGIC;
    DDR_ck_n : inout STD_LOGIC;
    DDR_ck_p : inout STD_LOGIC;
    DDR_cs_n : inout STD_LOGIC;
    DDR_reset_n : inout STD_LOGIC;
    DDR_odt : inout STD_LOGIC;
    DDR_ras_n : inout STD_LOGIC;
    DDR_we_n : inout STD_LOGIC;
    DDR_ba : inout STD_LOGIC_VECTOR ( 2 downto 0 );
    DDR_addr : inout STD_LOGIC_VECTOR ( 14 downto 0 );
    DDR_dm : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dq : inout STD_LOGIC_VECTOR ( 31 downto 0 );
    DDR_dqs_n : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    DDR_dqs_p : inout STD_LOGIC_VECTOR ( 3 downto 0 );
    FIXED_IO_mio : inout STD_LOGIC_VECTOR ( 53 downto 0 );
    FIXED_IO_ddr_vrn : inout STD_LOGIC;
    FIXED_IO_ddr_vrp : inout STD_LOGIC;
    FIXED_IO_ps_srstb : inout STD_LOGIC;
    FIXED_IO_ps_clk : inout STD_LOGIC;
    FIXED_IO_ps_porb : inout STD_LOGIC
  );
  end component design_irq;
  component IOBUF is
  port (
    I : in STD_LOGIC;
    O : out STD_LOGIC;
    T : in STD_LOGIC;
    IO : inout STD_LOGIC
  );
  end component IOBUF;
  signal led_tri_i_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_tri_i_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_tri_i_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_tri_i_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_tri_io_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_tri_io_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_tri_io_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_tri_io_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_tri_o_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_tri_o_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_tri_o_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_tri_o_3 : STD_LOGIC_VECTOR ( 3 to 3 );
  signal led_tri_t_0 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal led_tri_t_1 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal led_tri_t_2 : STD_LOGIC_VECTOR ( 2 to 2 );
  signal led_tri_t_3 : STD_LOGIC_VECTOR ( 3 to 3 );
begin
design_irq_i: component design_irq
     port map (
      DDR_addr(14 downto 0) => DDR_addr(14 downto 0),
      DDR_ba(2 downto 0) => DDR_ba(2 downto 0),
      DDR_cas_n => DDR_cas_n,
      DDR_ck_n => DDR_ck_n,
      DDR_ck_p => DDR_ck_p,
      DDR_cke => DDR_cke,
      DDR_cs_n => DDR_cs_n,
      DDR_dm(3 downto 0) => DDR_dm(3 downto 0),
      DDR_dq(31 downto 0) => DDR_dq(31 downto 0),
      DDR_dqs_n(3 downto 0) => DDR_dqs_n(3 downto 0),
      DDR_dqs_p(3 downto 0) => DDR_dqs_p(3 downto 0),
      DDR_odt => DDR_odt,
      DDR_ras_n => DDR_ras_n,
      DDR_reset_n => DDR_reset_n,
      DDR_we_n => DDR_we_n,
      FIXED_IO_ddr_vrn => FIXED_IO_ddr_vrn,
      FIXED_IO_ddr_vrp => FIXED_IO_ddr_vrp,
      FIXED_IO_mio(53 downto 0) => FIXED_IO_mio(53 downto 0),
      FIXED_IO_ps_clk => FIXED_IO_ps_clk,
      FIXED_IO_ps_porb => FIXED_IO_ps_porb,
      FIXED_IO_ps_srstb => FIXED_IO_ps_srstb,
      btn_tri_i(3 downto 0) => btn_tri_i(3 downto 0),
      led_tri_i(3) => led_tri_i_3(3),
      led_tri_i(2) => led_tri_i_2(2),
      led_tri_i(1) => led_tri_i_1(1),
      led_tri_i(0) => led_tri_i_0(0),
      led_tri_o(3) => led_tri_o_3(3),
      led_tri_o(2) => led_tri_o_2(2),
      led_tri_o(1) => led_tri_o_1(1),
      led_tri_o(0) => led_tri_o_0(0),
      led_tri_t(3) => led_tri_t_3(3),
      led_tri_t(2) => led_tri_t_2(2),
      led_tri_t(1) => led_tri_t_1(1),
      led_tri_t(0) => led_tri_t_0(0)
    );
led_tri_iobuf_0: component IOBUF
     port map (
      I => led_tri_o_0(0),
      IO => led_tri_io(0),
      O => led_tri_i_0(0),
      T => led_tri_t_0(0)
    );
led_tri_iobuf_1: component IOBUF
     port map (
      I => led_tri_o_1(1),
      IO => led_tri_io(1),
      O => led_tri_i_1(1),
      T => led_tri_t_1(1)
    );
led_tri_iobuf_2: component IOBUF
     port map (
      I => led_tri_o_2(2),
      IO => led_tri_io(2),
      O => led_tri_i_2(2),
      T => led_tri_t_2(2)
    );
led_tri_iobuf_3: component IOBUF
     port map (
      I => led_tri_o_3(3),
      IO => led_tri_io(3),
      O => led_tri_i_3(3),
      T => led_tri_t_3(3)
    );
end STRUCTURE;
