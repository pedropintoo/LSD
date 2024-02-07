-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/21/2023 22:53:51"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- AUD_ADCDAT	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK2_50	=>  Location: PIN_AG14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK3_50	=>  Location: PIN_AG15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_INT_N	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_LINK100	=>  Location: PIN_C14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET0_MDIO	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CLK	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_COL	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_CRS	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[1]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[2]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DATA[3]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_DV	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_RX_ER	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET0_TX_CLK	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_INT_N	=>  Location: PIN_D24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_LINK100	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENET1_MDIO	=>  Location: PIN_D25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CLK	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_COL	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_CRS	=>  Location: PIN_D20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[0]	=>  Location: PIN_B23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[1]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[2]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DATA[3]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_DV	=>  Location: PIN_A22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_RX_ER	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENET1_TX_CLK	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ENETCLK_25	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- FL_RY	=>  Location: PIN_Y1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- HSMC_CLKIN0	=>  Location: PIN_AH15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- IRDA_RXD	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OTG_INT	=>  Location: PIN_D5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SD_WP_N	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SMA_CLKIN	=>  Location: PIN_AH14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- TD_CLK27	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[0]	=>  Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[1]	=>  Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[2]	=>  Location: PIN_D8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[3]	=>  Location: PIN_C7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[4]	=>  Location: PIN_D7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[5]	=>  Location: PIN_D6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[6]	=>  Location: PIN_E7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_DATA[7]	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_HS	=>  Location: PIN_E5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- TD_VS	=>  Location: PIN_E4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RTS	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- UART_RXD	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \AUD_ADCDAT~padout\ : std_logic;
SIGNAL \CLOCK2_50~padout\ : std_logic;
SIGNAL \CLOCK3_50~padout\ : std_logic;
SIGNAL \ENET0_INT_N~padout\ : std_logic;
SIGNAL \ENET0_LINK100~padout\ : std_logic;
SIGNAL \ENET0_MDIO~padout\ : std_logic;
SIGNAL \ENET0_RX_CLK~padout\ : std_logic;
SIGNAL \ENET0_RX_COL~padout\ : std_logic;
SIGNAL \ENET0_RX_CRS~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET0_RX_DV~padout\ : std_logic;
SIGNAL \ENET0_RX_ER~padout\ : std_logic;
SIGNAL \ENET0_TX_CLK~padout\ : std_logic;
SIGNAL \ENET1_INT_N~padout\ : std_logic;
SIGNAL \ENET1_LINK100~padout\ : std_logic;
SIGNAL \ENET1_MDIO~padout\ : std_logic;
SIGNAL \ENET1_RX_CLK~padout\ : std_logic;
SIGNAL \ENET1_RX_COL~padout\ : std_logic;
SIGNAL \ENET1_RX_CRS~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~padout\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~padout\ : std_logic;
SIGNAL \ENET1_RX_DV~padout\ : std_logic;
SIGNAL \ENET1_RX_ER~padout\ : std_logic;
SIGNAL \ENET1_TX_CLK~padout\ : std_logic;
SIGNAL \ENETCLK_25~padout\ : std_logic;
SIGNAL \FL_RY~padout\ : std_logic;
SIGNAL \HSMC_CLKIN0~padout\ : std_logic;
SIGNAL \IRDA_RXD~padout\ : std_logic;
SIGNAL \KEY[0]~padout\ : std_logic;
SIGNAL \KEY[1]~padout\ : std_logic;
SIGNAL \KEY[2]~padout\ : std_logic;
SIGNAL \KEY[3]~padout\ : std_logic;
SIGNAL \OTG_INT~padout\ : std_logic;
SIGNAL \SD_WP_N~padout\ : std_logic;
SIGNAL \SMA_CLKIN~padout\ : std_logic;
SIGNAL \SW[0]~padout\ : std_logic;
SIGNAL \SW[10]~padout\ : std_logic;
SIGNAL \SW[11]~padout\ : std_logic;
SIGNAL \SW[12]~padout\ : std_logic;
SIGNAL \SW[13]~padout\ : std_logic;
SIGNAL \SW[14]~padout\ : std_logic;
SIGNAL \SW[15]~padout\ : std_logic;
SIGNAL \SW[16]~padout\ : std_logic;
SIGNAL \SW[17]~padout\ : std_logic;
SIGNAL \SW[1]~padout\ : std_logic;
SIGNAL \SW[2]~padout\ : std_logic;
SIGNAL \SW[3]~padout\ : std_logic;
SIGNAL \SW[4]~padout\ : std_logic;
SIGNAL \SW[5]~padout\ : std_logic;
SIGNAL \SW[6]~padout\ : std_logic;
SIGNAL \SW[7]~padout\ : std_logic;
SIGNAL \SW[8]~padout\ : std_logic;
SIGNAL \SW[9]~padout\ : std_logic;
SIGNAL \TD_CLK27~padout\ : std_logic;
SIGNAL \TD_DATA[0]~padout\ : std_logic;
SIGNAL \TD_DATA[1]~padout\ : std_logic;
SIGNAL \TD_DATA[2]~padout\ : std_logic;
SIGNAL \TD_DATA[3]~padout\ : std_logic;
SIGNAL \TD_DATA[4]~padout\ : std_logic;
SIGNAL \TD_DATA[5]~padout\ : std_logic;
SIGNAL \TD_DATA[6]~padout\ : std_logic;
SIGNAL \TD_DATA[7]~padout\ : std_logic;
SIGNAL \TD_HS~padout\ : std_logic;
SIGNAL \TD_VS~padout\ : std_logic;
SIGNAL \UART_RTS~padout\ : std_logic;
SIGNAL \UART_RXD~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \AUD_ADCDAT~ibuf_o\ : std_logic;
SIGNAL \CLOCK2_50~ibuf_o\ : std_logic;
SIGNAL \CLOCK3_50~ibuf_o\ : std_logic;
SIGNAL \ENET0_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET0_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET0_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET0_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET0_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_INT_N~ibuf_o\ : std_logic;
SIGNAL \ENET1_LINK100~ibuf_o\ : std_logic;
SIGNAL \ENET1_MDIO~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_COL~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_CRS~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_DV~ibuf_o\ : std_logic;
SIGNAL \ENET1_RX_ER~ibuf_o\ : std_logic;
SIGNAL \ENET1_TX_CLK~ibuf_o\ : std_logic;
SIGNAL \ENETCLK_25~ibuf_o\ : std_logic;
SIGNAL \FL_RY~ibuf_o\ : std_logic;
SIGNAL \HSMC_CLKIN0~ibuf_o\ : std_logic;
SIGNAL \IRDA_RXD~ibuf_o\ : std_logic;
SIGNAL \KEY[0]~ibuf_o\ : std_logic;
SIGNAL \KEY[1]~ibuf_o\ : std_logic;
SIGNAL \KEY[2]~ibuf_o\ : std_logic;
SIGNAL \KEY[3]~ibuf_o\ : std_logic;
SIGNAL \OTG_INT~ibuf_o\ : std_logic;
SIGNAL \SD_WP_N~ibuf_o\ : std_logic;
SIGNAL \SMA_CLKIN~ibuf_o\ : std_logic;
SIGNAL \SW[0]~ibuf_o\ : std_logic;
SIGNAL \SW[10]~ibuf_o\ : std_logic;
SIGNAL \SW[11]~ibuf_o\ : std_logic;
SIGNAL \SW[12]~ibuf_o\ : std_logic;
SIGNAL \SW[13]~ibuf_o\ : std_logic;
SIGNAL \SW[14]~ibuf_o\ : std_logic;
SIGNAL \SW[15]~ibuf_o\ : std_logic;
SIGNAL \SW[16]~ibuf_o\ : std_logic;
SIGNAL \SW[17]~ibuf_o\ : std_logic;
SIGNAL \SW[1]~ibuf_o\ : std_logic;
SIGNAL \SW[2]~ibuf_o\ : std_logic;
SIGNAL \SW[3]~ibuf_o\ : std_logic;
SIGNAL \SW[4]~ibuf_o\ : std_logic;
SIGNAL \SW[5]~ibuf_o\ : std_logic;
SIGNAL \SW[6]~ibuf_o\ : std_logic;
SIGNAL \SW[7]~ibuf_o\ : std_logic;
SIGNAL \SW[8]~ibuf_o\ : std_logic;
SIGNAL \SW[9]~ibuf_o\ : std_logic;
SIGNAL \TD_CLK27~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[0]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[1]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[2]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[3]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[4]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[5]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[6]~ibuf_o\ : std_logic;
SIGNAL \TD_DATA[7]~ibuf_o\ : std_logic;
SIGNAL \TD_HS~ibuf_o\ : std_logic;
SIGNAL \TD_VS~ibuf_o\ : std_logic;
SIGNAL \UART_RTS~ibuf_o\ : std_logic;
SIGNAL \UART_RXD~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	vga_example_tl IS
    PORT (
	clock_50 : IN std_logic;
	vga_clk : OUT std_logic;
	vga_hs : OUT std_logic;
	vga_vs : OUT std_logic;
	vga_sync_n : OUT std_logic;
	vga_blank_n : OUT std_logic;
	vga_r : OUT std_logic_vector(7 DOWNTO 0);
	vga_g : OUT std_logic_vector(7 DOWNTO 0);
	vga_b : OUT std_logic_vector(7 DOWNTO 0)
	);
END vga_example_tl;

-- Design Ports Information
-- vga_clk	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_hs	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_vs	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_sync_n	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_blank_n	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_r[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_g[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- vga_b[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- clock_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vga_example_tl IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_vga_clk : std_logic;
SIGNAL ww_vga_hs : std_logic;
SIGNAL ww_vga_vs : std_logic;
SIGNAL ww_vga_sync_n : std_logic;
SIGNAL ww_vga_blank_n : std_logic;
SIGNAL ww_vga_r : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_g : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_vga_b : std_logic_vector(7 DOWNTO 0);
SIGNAL \clock_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \vga_clk~output_o\ : std_logic;
SIGNAL \vga_hs~output_o\ : std_logic;
SIGNAL \vga_vs~output_o\ : std_logic;
SIGNAL \vga_sync_n~output_o\ : std_logic;
SIGNAL \vga_blank_n~output_o\ : std_logic;
SIGNAL \vga_r[0]~output_o\ : std_logic;
SIGNAL \vga_r[1]~output_o\ : std_logic;
SIGNAL \vga_r[2]~output_o\ : std_logic;
SIGNAL \vga_r[3]~output_o\ : std_logic;
SIGNAL \vga_r[4]~output_o\ : std_logic;
SIGNAL \vga_r[5]~output_o\ : std_logic;
SIGNAL \vga_r[6]~output_o\ : std_logic;
SIGNAL \vga_r[7]~output_o\ : std_logic;
SIGNAL \vga_g[0]~output_o\ : std_logic;
SIGNAL \vga_g[1]~output_o\ : std_logic;
SIGNAL \vga_g[2]~output_o\ : std_logic;
SIGNAL \vga_g[3]~output_o\ : std_logic;
SIGNAL \vga_g[4]~output_o\ : std_logic;
SIGNAL \vga_g[5]~output_o\ : std_logic;
SIGNAL \vga_g[6]~output_o\ : std_logic;
SIGNAL \vga_g[7]~output_o\ : std_logic;
SIGNAL \vga_b[0]~output_o\ : std_logic;
SIGNAL \vga_b[1]~output_o\ : std_logic;
SIGNAL \vga_b[2]~output_o\ : std_logic;
SIGNAL \vga_b[3]~output_o\ : std_logic;
SIGNAL \vga_b[4]~output_o\ : std_logic;
SIGNAL \vga_b[5]~output_o\ : std_logic;
SIGNAL \vga_b[6]~output_o\ : std_logic;
SIGNAL \vga_b[7]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \clock_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \VGA_C|Add0~0_combout\ : std_logic;
SIGNAL \VGA_C|Add0~38_combout\ : std_logic;
SIGNAL \VGA_C|Add0~1\ : std_logic;
SIGNAL \VGA_C|Add0~2_combout\ : std_logic;
SIGNAL \VGA_C|Add0~37_combout\ : std_logic;
SIGNAL \VGA_C|Add0~3\ : std_logic;
SIGNAL \VGA_C|Add0~4_combout\ : std_logic;
SIGNAL \VGA_C|Add0~36_combout\ : std_logic;
SIGNAL \VGA_C|Add0~5\ : std_logic;
SIGNAL \VGA_C|Add0~6_combout\ : std_logic;
SIGNAL \VGA_C|Add0~34_combout\ : std_logic;
SIGNAL \VGA_C|Add0~7\ : std_logic;
SIGNAL \VGA_C|Add0~9\ : std_logic;
SIGNAL \VGA_C|Add0~10_combout\ : std_logic;
SIGNAL \VGA_C|Add0~32_combout\ : std_logic;
SIGNAL \VGA_C|Add0~11\ : std_logic;
SIGNAL \VGA_C|Add0~12_combout\ : std_logic;
SIGNAL \VGA_C|Add0~33_combout\ : std_logic;
SIGNAL \VGA_C|Add0~13\ : std_logic;
SIGNAL \VGA_C|Add0~14_combout\ : std_logic;
SIGNAL \VGA_C|Add0~31_combout\ : std_logic;
SIGNAL \VGA_C|Add0~15\ : std_logic;
SIGNAL \VGA_C|Add0~16_combout\ : std_logic;
SIGNAL \VGA_C|Add0~28_combout\ : std_logic;
SIGNAL \VGA_C|Add0~17\ : std_logic;
SIGNAL \VGA_C|Add0~18_combout\ : std_logic;
SIGNAL \VGA_C|Add0~29_combout\ : std_logic;
SIGNAL \VGA_C|Add0~19\ : std_logic;
SIGNAL \VGA_C|Add0~21\ : std_logic;
SIGNAL \VGA_C|Add0~23\ : std_logic;
SIGNAL \VGA_C|Add0~24_combout\ : std_logic;
SIGNAL \VGA_C|Add0~26_combout\ : std_logic;
SIGNAL \VGA_C|Add0~8_combout\ : std_logic;
SIGNAL \VGA_C|Add0~35_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~3_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~5_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~4_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~6_combout\ : std_logic;
SIGNAL \VGA_C|Add0~20_combout\ : std_logic;
SIGNAL \VGA_C|Add0~30_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~2_combout\ : std_logic;
SIGNAL \VGA_C|Add0~22_combout\ : std_logic;
SIGNAL \VGA_C|Add0~27_combout\ : std_logic;
SIGNAL \VGA_C|process_1~0_combout\ : std_logic;
SIGNAL \VGA_C|process_1~1_combout\ : std_logic;
SIGNAL \VGA_C|process_1~2_combout\ : std_logic;
SIGNAL \VGA_C|process_1~3_combout\ : std_logic;
SIGNAL \VGA_C|vga_data_0.h_sync~q\ : std_logic;
SIGNAL \data_1.h_sync~q\ : std_logic;
SIGNAL \VGA_O|vga_hs~q\ : std_logic;
SIGNAL \VGA_C|Add1~0_combout\ : std_logic;
SIGNAL \VGA_C|Add1~16_combout\ : std_logic;
SIGNAL \VGA_C|LessThan0~7_combout\ : std_logic;
SIGNAL \VGA_C|Add1~1\ : std_logic;
SIGNAL \VGA_C|Add1~2_combout\ : std_logic;
SIGNAL \VGA_C|Add1~17_combout\ : std_logic;
SIGNAL \VGA_C|Add1~3\ : std_logic;
SIGNAL \VGA_C|Add1~4_combout\ : std_logic;
SIGNAL \VGA_C|Add1~20_combout\ : std_logic;
SIGNAL \VGA_C|Add1~5\ : std_logic;
SIGNAL \VGA_C|Add1~7\ : std_logic;
SIGNAL \VGA_C|Add1~8_combout\ : std_logic;
SIGNAL \VGA_C|Add1~15_combout\ : std_logic;
SIGNAL \VGA_C|Add1~9\ : std_logic;
SIGNAL \VGA_C|Add1~10_combout\ : std_logic;
SIGNAL \VGA_C|Add1~19_combout\ : std_logic;
SIGNAL \VGA_C|Add1~11\ : std_logic;
SIGNAL \VGA_C|Add1~12_combout\ : std_logic;
SIGNAL \VGA_C|Add1~14_combout\ : std_logic;
SIGNAL \VGA_C|Add1~13\ : std_logic;
SIGNAL \VGA_C|Add1~21_combout\ : std_logic;
SIGNAL \VGA_C|Add1~23_combout\ : std_logic;
SIGNAL \VGA_C|Add1~22\ : std_logic;
SIGNAL \VGA_C|Add1~25\ : std_logic;
SIGNAL \VGA_C|Add1~27_combout\ : std_logic;
SIGNAL \VGA_C|Add1~32_combout\ : std_logic;
SIGNAL \VGA_C|Add1~28\ : std_logic;
SIGNAL \VGA_C|Add1~29_combout\ : std_logic;
SIGNAL \VGA_C|Add1~31_combout\ : std_logic;
SIGNAL \VGA_C|LessThan1~0_combout\ : std_logic;
SIGNAL \VGA_C|Add1~30\ : std_logic;
SIGNAL \VGA_C|Add1~33_combout\ : std_logic;
SIGNAL \VGA_C|Add1~35_combout\ : std_logic;
SIGNAL \VGA_C|Add1~6_combout\ : std_logic;
SIGNAL \VGA_C|Add1~18_combout\ : std_logic;
SIGNAL \VGA_C|LessThan1~2_combout\ : std_logic;
SIGNAL \VGA_C|LessThan1~1_combout\ : std_logic;
SIGNAL \VGA_C|LessThan1~3_combout\ : std_logic;
SIGNAL \VGA_C|Add1~24_combout\ : std_logic;
SIGNAL \VGA_C|Add1~26_combout\ : std_logic;
SIGNAL \VGA_C|process_1~8_combout\ : std_logic;
SIGNAL \VGA_C|process_1~6_combout\ : std_logic;
SIGNAL \VGA_C|process_1~4_combout\ : std_logic;
SIGNAL \VGA_C|process_1~5_combout\ : std_logic;
SIGNAL \VGA_C|process_1~7_combout\ : std_logic;
SIGNAL \VGA_C|process_1~9_combout\ : std_logic;
SIGNAL \VGA_C|vga_data_0.v_sync~q\ : std_logic;
SIGNAL \data_1.v_sync~q\ : std_logic;
SIGNAL \VGA_O|vga_vs~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_vs~q\ : std_logic;
SIGNAL \VGA_C|LessThan7~0_combout\ : std_logic;
SIGNAL \VGA_C|LessThan7~1_combout\ : std_logic;
SIGNAL \VGA_C|LessThan7~2_combout\ : std_logic;
SIGNAL \VGA_C|process_1~10_combout\ : std_logic;
SIGNAL \VGA_C|process_1~11_combout\ : std_logic;
SIGNAL \VGA_C|vga_data_0.blank_n~q\ : std_logic;
SIGNAL \data_1.blank_n~q\ : std_logic;
SIGNAL \VGA_O|vga_blank_n~q\ : std_logic;
SIGNAL \VGA_C|vga_data_0.y[9]~feeder_combout\ : std_logic;
SIGNAL \process_0~1_combout\ : std_logic;
SIGNAL \VGA_C|vga_data_0.y[6]~feeder_combout\ : std_logic;
SIGNAL \process_0~0_combout\ : std_logic;
SIGNAL \process_0~2_combout\ : std_logic;
SIGNAL \process_0~3_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_g[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[0]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[1]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[2]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[3]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[4]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[5]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[6]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_b[7]~feeder_combout\ : std_logic;
SIGNAL \VGA_O|vga_r\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_O|vga_g\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_C|y\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VGA_O|vga_b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_C|x\ : std_logic_vector(12 DOWNTO 0);
SIGNAL \rgb_1.b\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \VGA_C|vga_data_0.y\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \ALT_INV_clock_50~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock_50 <= clock_50;
vga_clk <= ww_vga_clk;
vga_hs <= ww_vga_hs;
vga_vs <= ww_vga_vs;
vga_sync_n <= ww_vga_sync_n;
vga_blank_n <= ww_vga_blank_n;
vga_r <= ww_vga_r;
vga_g <= ww_vga_g;
vga_b <= ww_vga_b;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock_50~input_o\);
\ALT_INV_clock_50~input_o\ <= NOT \clock_50~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X47_Y73_N2
\vga_clk~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_clock_50~input_o\,
	devoe => ww_devoe,
	o => \vga_clk~output_o\);

-- Location: IOOBUF_X38_Y73_N16
\vga_hs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_hs~q\,
	devoe => ww_devoe,
	o => \vga_hs~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\vga_vs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_vs~q\,
	devoe => ww_devoe,
	o => \vga_vs~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\vga_sync_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vga_sync_n~output_o\);

-- Location: IOOBUF_X31_Y73_N9
\vga_blank_n~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_blank_n~q\,
	devoe => ww_devoe,
	o => \vga_blank_n~output_o\);

-- Location: IOOBUF_X33_Y73_N2
\vga_r[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(0),
	devoe => ww_devoe,
	o => \vga_r[0]~output_o\);

-- Location: IOOBUF_X31_Y73_N2
\vga_r[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(1),
	devoe => ww_devoe,
	o => \vga_r[1]~output_o\);

-- Location: IOOBUF_X35_Y73_N23
\vga_r[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(2),
	devoe => ww_devoe,
	o => \vga_r[2]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\vga_r[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(3),
	devoe => ww_devoe,
	o => \vga_r[3]~output_o\);

-- Location: IOOBUF_X20_Y73_N9
\vga_r[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(4),
	devoe => ww_devoe,
	o => \vga_r[4]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\vga_r[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(5),
	devoe => ww_devoe,
	o => \vga_r[5]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\vga_r[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(6),
	devoe => ww_devoe,
	o => \vga_r[6]~output_o\);

-- Location: IOOBUF_X20_Y73_N16
\vga_r[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_r\(7),
	devoe => ww_devoe,
	o => \vga_r[7]~output_o\);

-- Location: IOOBUF_X11_Y73_N16
\vga_g[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(0),
	devoe => ww_devoe,
	o => \vga_g[0]~output_o\);

-- Location: IOOBUF_X25_Y73_N16
\vga_g[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(1),
	devoe => ww_devoe,
	o => \vga_g[1]~output_o\);

-- Location: IOOBUF_X11_Y73_N9
\vga_g[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(2),
	devoe => ww_devoe,
	o => \vga_g[2]~output_o\);

-- Location: IOOBUF_X25_Y73_N23
\vga_g[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(3),
	devoe => ww_devoe,
	o => \vga_g[3]~output_o\);

-- Location: IOOBUF_X16_Y73_N9
\vga_g[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(4),
	devoe => ww_devoe,
	o => \vga_g[4]~output_o\);

-- Location: IOOBUF_X16_Y73_N2
\vga_g[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(5),
	devoe => ww_devoe,
	o => \vga_g[5]~output_o\);

-- Location: IOOBUF_X20_Y73_N2
\vga_g[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(6),
	devoe => ww_devoe,
	o => \vga_g[6]~output_o\);

-- Location: IOOBUF_X23_Y73_N16
\vga_g[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_g\(7),
	devoe => ww_devoe,
	o => \vga_g[7]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\vga_b[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(0),
	devoe => ww_devoe,
	o => \vga_b[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N2
\vga_b[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(1),
	devoe => ww_devoe,
	o => \vga_b[1]~output_o\);

-- Location: IOOBUF_X23_Y73_N2
\vga_b[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(2),
	devoe => ww_devoe,
	o => \vga_b[2]~output_o\);

-- Location: IOOBUF_X42_Y73_N9
\vga_b[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(3),
	devoe => ww_devoe,
	o => \vga_b[3]~output_o\);

-- Location: IOOBUF_X42_Y73_N2
\vga_b[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(4),
	devoe => ww_devoe,
	o => \vga_b[4]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\vga_b[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(5),
	devoe => ww_devoe,
	o => \vga_b[5]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\vga_b[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(6),
	devoe => ww_devoe,
	o => \vga_b[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\vga_b[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_O|vga_b\(7),
	devoe => ww_devoe,
	o => \vga_b[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clock_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

-- Location: CLKCTRL_G4
\clock_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y69_N2
\VGA_C|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~0_combout\ = \VGA_C|x\(0) $ (VCC)
-- \VGA_C|Add0~1\ = CARRY(\VGA_C|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(0),
	datad => VCC,
	combout => \VGA_C|Add0~0_combout\,
	cout => \VGA_C|Add0~1\);

-- Location: LCCOMB_X34_Y69_N6
\VGA_C|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~38_combout\ = (\VGA_C|Add0~0_combout\ & ((\VGA_C|LessThan0~2_combout\) # ((\VGA_C|LessThan0~6_combout\) # (!\VGA_C|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~0_combout\,
	combout => \VGA_C|Add0~38_combout\);

-- Location: FF_X34_Y69_N7
\VGA_C|x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(0));

-- Location: LCCOMB_X33_Y69_N4
\VGA_C|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~2_combout\ = (\VGA_C|x\(1) & (!\VGA_C|Add0~1\)) # (!\VGA_C|x\(1) & ((\VGA_C|Add0~1\) # (GND)))
-- \VGA_C|Add0~3\ = CARRY((!\VGA_C|Add0~1\) # (!\VGA_C|x\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(1),
	datad => VCC,
	cin => \VGA_C|Add0~1\,
	combout => \VGA_C|Add0~2_combout\,
	cout => \VGA_C|Add0~3\);

-- Location: LCCOMB_X34_Y69_N0
\VGA_C|Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~37_combout\ = (\VGA_C|Add0~2_combout\ & (((\VGA_C|LessThan0~6_combout\) # (\VGA_C|LessThan0~2_combout\)) # (!\VGA_C|x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(12),
	datab => \VGA_C|LessThan0~6_combout\,
	datac => \VGA_C|Add0~2_combout\,
	datad => \VGA_C|LessThan0~2_combout\,
	combout => \VGA_C|Add0~37_combout\);

-- Location: FF_X34_Y69_N1
\VGA_C|x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(1));

-- Location: LCCOMB_X33_Y69_N6
\VGA_C|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~4_combout\ = (\VGA_C|x\(2) & (\VGA_C|Add0~3\ $ (GND))) # (!\VGA_C|x\(2) & (!\VGA_C|Add0~3\ & VCC))
-- \VGA_C|Add0~5\ = CARRY((\VGA_C|x\(2) & !\VGA_C|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(2),
	datad => VCC,
	cin => \VGA_C|Add0~3\,
	combout => \VGA_C|Add0~4_combout\,
	cout => \VGA_C|Add0~5\);

-- Location: LCCOMB_X34_Y69_N2
\VGA_C|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~36_combout\ = (\VGA_C|Add0~4_combout\ & (((\VGA_C|LessThan0~6_combout\) # (\VGA_C|LessThan0~2_combout\)) # (!\VGA_C|x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(12),
	datab => \VGA_C|LessThan0~6_combout\,
	datac => \VGA_C|Add0~4_combout\,
	datad => \VGA_C|LessThan0~2_combout\,
	combout => \VGA_C|Add0~36_combout\);

-- Location: FF_X34_Y69_N3
\VGA_C|x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(2));

-- Location: LCCOMB_X33_Y69_N8
\VGA_C|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~6_combout\ = (\VGA_C|x\(3) & (!\VGA_C|Add0~5\)) # (!\VGA_C|x\(3) & ((\VGA_C|Add0~5\) # (GND)))
-- \VGA_C|Add0~7\ = CARRY((!\VGA_C|Add0~5\) # (!\VGA_C|x\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(3),
	datad => VCC,
	cin => \VGA_C|Add0~5\,
	combout => \VGA_C|Add0~6_combout\,
	cout => \VGA_C|Add0~7\);

-- Location: LCCOMB_X33_Y69_N0
\VGA_C|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~34_combout\ = (\VGA_C|Add0~6_combout\ & ((\VGA_C|LessThan0~2_combout\) # ((\VGA_C|LessThan0~6_combout\) # (!\VGA_C|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~6_combout\,
	combout => \VGA_C|Add0~34_combout\);

-- Location: FF_X33_Y69_N1
\VGA_C|x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(3));

-- Location: LCCOMB_X33_Y69_N10
\VGA_C|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~8_combout\ = (\VGA_C|x\(4) & (\VGA_C|Add0~7\ $ (GND))) # (!\VGA_C|x\(4) & (!\VGA_C|Add0~7\ & VCC))
-- \VGA_C|Add0~9\ = CARRY((\VGA_C|x\(4) & !\VGA_C|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(4),
	datad => VCC,
	cin => \VGA_C|Add0~7\,
	combout => \VGA_C|Add0~8_combout\,
	cout => \VGA_C|Add0~9\);

-- Location: LCCOMB_X33_Y69_N12
\VGA_C|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~10_combout\ = (\VGA_C|x\(5) & ((\VGA_C|Add0~9\) # (GND))) # (!\VGA_C|x\(5) & (!\VGA_C|Add0~9\))
-- \VGA_C|Add0~11\ = CARRY((\VGA_C|x\(5)) # (!\VGA_C|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(5),
	datad => VCC,
	cin => \VGA_C|Add0~9\,
	combout => \VGA_C|Add0~10_combout\,
	cout => \VGA_C|Add0~11\);

-- Location: LCCOMB_X34_Y69_N30
\VGA_C|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~32_combout\ = ((!\VGA_C|LessThan0~2_combout\ & (\VGA_C|x\(12) & !\VGA_C|LessThan0~6_combout\))) # (!\VGA_C|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~10_combout\,
	combout => \VGA_C|Add0~32_combout\);

-- Location: FF_X34_Y69_N31
\VGA_C|x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(5));

-- Location: LCCOMB_X33_Y69_N14
\VGA_C|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~12_combout\ = (\VGA_C|x\(6) & (!\VGA_C|Add0~11\ & VCC)) # (!\VGA_C|x\(6) & (\VGA_C|Add0~11\ $ (GND)))
-- \VGA_C|Add0~13\ = CARRY((!\VGA_C|x\(6) & !\VGA_C|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(6),
	datad => VCC,
	cin => \VGA_C|Add0~11\,
	combout => \VGA_C|Add0~12_combout\,
	cout => \VGA_C|Add0~13\);

-- Location: LCCOMB_X34_Y69_N12
\VGA_C|Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~33_combout\ = ((!\VGA_C|LessThan0~2_combout\ & (\VGA_C|x\(12) & !\VGA_C|LessThan0~6_combout\))) # (!\VGA_C|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~12_combout\,
	combout => \VGA_C|Add0~33_combout\);

-- Location: FF_X34_Y69_N13
\VGA_C|x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(6));

-- Location: LCCOMB_X33_Y69_N16
\VGA_C|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~14_combout\ = (\VGA_C|x\(7) & ((\VGA_C|Add0~13\) # (GND))) # (!\VGA_C|x\(7) & (!\VGA_C|Add0~13\))
-- \VGA_C|Add0~15\ = CARRY((\VGA_C|x\(7)) # (!\VGA_C|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(7),
	datad => VCC,
	cin => \VGA_C|Add0~13\,
	combout => \VGA_C|Add0~14_combout\,
	cout => \VGA_C|Add0~15\);

-- Location: LCCOMB_X34_Y69_N20
\VGA_C|Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~31_combout\ = ((\VGA_C|x\(12) & (!\VGA_C|LessThan0~6_combout\ & !\VGA_C|LessThan0~2_combout\))) # (!\VGA_C|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(12),
	datab => \VGA_C|LessThan0~6_combout\,
	datac => \VGA_C|Add0~14_combout\,
	datad => \VGA_C|LessThan0~2_combout\,
	combout => \VGA_C|Add0~31_combout\);

-- Location: FF_X34_Y69_N21
\VGA_C|x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~31_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(7));

-- Location: LCCOMB_X33_Y69_N18
\VGA_C|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~16_combout\ = (\VGA_C|x\(8) & (!\VGA_C|Add0~15\ & VCC)) # (!\VGA_C|x\(8) & (\VGA_C|Add0~15\ $ (GND)))
-- \VGA_C|Add0~17\ = CARRY((!\VGA_C|x\(8) & !\VGA_C|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(8),
	datad => VCC,
	cin => \VGA_C|Add0~15\,
	combout => \VGA_C|Add0~16_combout\,
	cout => \VGA_C|Add0~17\);

-- Location: LCCOMB_X33_Y69_N28
\VGA_C|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~28_combout\ = ((!\VGA_C|LessThan0~2_combout\ & (\VGA_C|x\(12) & !\VGA_C|LessThan0~6_combout\))) # (!\VGA_C|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~16_combout\,
	combout => \VGA_C|Add0~28_combout\);

-- Location: FF_X33_Y69_N29
\VGA_C|x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(8));

-- Location: LCCOMB_X33_Y69_N20
\VGA_C|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~18_combout\ = (\VGA_C|x\(9) & ((\VGA_C|Add0~17\) # (GND))) # (!\VGA_C|x\(9) & (!\VGA_C|Add0~17\))
-- \VGA_C|Add0~19\ = CARRY((\VGA_C|x\(9)) # (!\VGA_C|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(9),
	datad => VCC,
	cin => \VGA_C|Add0~17\,
	combout => \VGA_C|Add0~18_combout\,
	cout => \VGA_C|Add0~19\);

-- Location: LCCOMB_X34_Y69_N14
\VGA_C|Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~29_combout\ = ((!\VGA_C|LessThan0~2_combout\ & (\VGA_C|x\(12) & !\VGA_C|LessThan0~6_combout\))) # (!\VGA_C|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~18_combout\,
	combout => \VGA_C|Add0~29_combout\);

-- Location: FF_X34_Y69_N15
\VGA_C|x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(9));

-- Location: LCCOMB_X33_Y69_N22
\VGA_C|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~20_combout\ = (\VGA_C|x\(10) & (!\VGA_C|Add0~19\ & VCC)) # (!\VGA_C|x\(10) & (\VGA_C|Add0~19\ $ (GND)))
-- \VGA_C|Add0~21\ = CARRY((!\VGA_C|x\(10) & !\VGA_C|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(10),
	datad => VCC,
	cin => \VGA_C|Add0~19\,
	combout => \VGA_C|Add0~20_combout\,
	cout => \VGA_C|Add0~21\);

-- Location: LCCOMB_X33_Y69_N24
\VGA_C|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~22_combout\ = (\VGA_C|x\(11) & (!\VGA_C|Add0~21\)) # (!\VGA_C|x\(11) & ((\VGA_C|Add0~21\) # (GND)))
-- \VGA_C|Add0~23\ = CARRY((!\VGA_C|Add0~21\) # (!\VGA_C|x\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(11),
	datad => VCC,
	cin => \VGA_C|Add0~21\,
	combout => \VGA_C|Add0~22_combout\,
	cout => \VGA_C|Add0~23\);

-- Location: LCCOMB_X33_Y69_N26
\VGA_C|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~24_combout\ = \VGA_C|Add0~23\ $ (\VGA_C|x\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_C|x\(12),
	cin => \VGA_C|Add0~23\,
	combout => \VGA_C|Add0~24_combout\);

-- Location: LCCOMB_X34_Y69_N18
\VGA_C|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~26_combout\ = ((!\VGA_C|LessThan0~2_combout\ & (\VGA_C|x\(12) & !\VGA_C|LessThan0~6_combout\))) # (!\VGA_C|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|Add0~24_combout\,
	datab => \VGA_C|LessThan0~2_combout\,
	datac => \VGA_C|x\(12),
	datad => \VGA_C|LessThan0~6_combout\,
	combout => \VGA_C|Add0~26_combout\);

-- Location: FF_X34_Y69_N19
\VGA_C|x[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(12));

-- Location: LCCOMB_X34_Y69_N22
\VGA_C|Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~35_combout\ = (\VGA_C|Add0~8_combout\ & ((\VGA_C|LessThan0~2_combout\) # ((\VGA_C|LessThan0~6_combout\) # (!\VGA_C|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~8_combout\,
	combout => \VGA_C|Add0~35_combout\);

-- Location: FF_X34_Y69_N23
\VGA_C|x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(4));

-- Location: LCCOMB_X34_Y69_N28
\VGA_C|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~3_combout\ = (\VGA_C|x\(7) & (\VGA_C|x\(5) & \VGA_C|x\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(7),
	datac => \VGA_C|x\(5),
	datad => \VGA_C|x\(6),
	combout => \VGA_C|LessThan0~3_combout\);

-- Location: LCCOMB_X34_Y69_N26
\VGA_C|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~5_combout\ = (\VGA_C|x\(9) & (!\VGA_C|x\(11) & \VGA_C|x\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(9),
	datac => \VGA_C|x\(11),
	datad => \VGA_C|x\(8),
	combout => \VGA_C|LessThan0~5_combout\);

-- Location: LCCOMB_X34_Y69_N16
\VGA_C|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~4_combout\ = (((!\VGA_C|x\(1)) # (!\VGA_C|x\(3))) # (!\VGA_C|x\(2))) # (!\VGA_C|x\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(0),
	datab => \VGA_C|x\(2),
	datac => \VGA_C|x\(3),
	datad => \VGA_C|x\(1),
	combout => \VGA_C|LessThan0~4_combout\);

-- Location: LCCOMB_X34_Y69_N24
\VGA_C|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~6_combout\ = (!\VGA_C|x\(4) & (\VGA_C|LessThan0~3_combout\ & (\VGA_C|LessThan0~5_combout\ & \VGA_C|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(4),
	datab => \VGA_C|LessThan0~3_combout\,
	datac => \VGA_C|LessThan0~5_combout\,
	datad => \VGA_C|LessThan0~4_combout\,
	combout => \VGA_C|LessThan0~6_combout\);

-- Location: LCCOMB_X33_Y69_N30
\VGA_C|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~30_combout\ = ((!\VGA_C|LessThan0~6_combout\ & (!\VGA_C|LessThan0~2_combout\ & \VGA_C|x\(12)))) # (!\VGA_C|Add0~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~6_combout\,
	datab => \VGA_C|LessThan0~2_combout\,
	datac => \VGA_C|Add0~20_combout\,
	datad => \VGA_C|x\(12),
	combout => \VGA_C|Add0~30_combout\);

-- Location: FF_X33_Y69_N31
\VGA_C|x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(10));

-- Location: LCCOMB_X34_Y69_N8
\VGA_C|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~2_combout\ = (!\VGA_C|x\(11) & \VGA_C|x\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|x\(11),
	datad => \VGA_C|x\(10),
	combout => \VGA_C|LessThan0~2_combout\);

-- Location: LCCOMB_X34_Y69_N4
\VGA_C|Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add0~27_combout\ = (\VGA_C|Add0~22_combout\ & ((\VGA_C|LessThan0~2_combout\) # ((\VGA_C|LessThan0~6_combout\) # (!\VGA_C|x\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan0~2_combout\,
	datab => \VGA_C|x\(12),
	datac => \VGA_C|LessThan0~6_combout\,
	datad => \VGA_C|Add0~22_combout\,
	combout => \VGA_C|Add0~27_combout\);

-- Location: FF_X34_Y69_N5
\VGA_C|x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|x\(11));

-- Location: LCCOMB_X31_Y69_N16
\VGA_C|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~0_combout\ = (\VGA_C|x\(11)) # (((\VGA_C|x\(9)) # (\VGA_C|x\(8))) # (!\VGA_C|x\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(11),
	datab => \VGA_C|x\(10),
	datac => \VGA_C|x\(9),
	datad => \VGA_C|x\(8),
	combout => \VGA_C|process_1~0_combout\);

-- Location: LCCOMB_X32_Y69_N18
\VGA_C|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~1_combout\ = (\VGA_C|x\(4) & ((\VGA_C|x\(3)) # (!\VGA_C|x\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(4),
	datab => \VGA_C|x\(3),
	datad => \VGA_C|x\(7),
	combout => \VGA_C|process_1~1_combout\);

-- Location: LCCOMB_X32_Y69_N2
\VGA_C|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~2_combout\ = (\VGA_C|x\(6)) # ((!\VGA_C|process_1~1_combout\ & \VGA_C|x\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(6),
	datab => \VGA_C|process_1~1_combout\,
	datad => \VGA_C|x\(5),
	combout => \VGA_C|process_1~2_combout\);

-- Location: LCCOMB_X32_Y69_N0
\VGA_C|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~3_combout\ = (!\VGA_C|process_1~0_combout\ & (\VGA_C|x\(12) & (\VGA_C|process_1~2_combout\ $ (\VGA_C|x\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|process_1~0_combout\,
	datab => \VGA_C|process_1~2_combout\,
	datac => \VGA_C|x\(7),
	datad => \VGA_C|x\(12),
	combout => \VGA_C|process_1~3_combout\);

-- Location: FF_X32_Y69_N1
\VGA_C|vga_data_0.h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|process_1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.h_sync~q\);

-- Location: FF_X33_Y69_N13
\data_1.h_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|vga_data_0.h_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_1.h_sync~q\);

-- Location: FF_X34_Y69_N9
\VGA_O|vga_hs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \data_1.h_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_hs~q\);

-- Location: LCCOMB_X36_Y69_N6
\VGA_C|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~0_combout\ = \VGA_C|y\(0) $ (VCC)
-- \VGA_C|Add1~1\ = CARRY(\VGA_C|y\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(0),
	datad => VCC,
	combout => \VGA_C|Add1~0_combout\,
	cout => \VGA_C|Add1~1\);

-- Location: LCCOMB_X35_Y69_N8
\VGA_C|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~16_combout\ = (\VGA_C|Add1~0_combout\ & ((\VGA_C|LessThan1~0_combout\) # ((\VGA_C|LessThan1~3_combout\) # (!\VGA_C|y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~0_combout\,
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|y\(11),
	datad => \VGA_C|Add1~0_combout\,
	combout => \VGA_C|Add1~16_combout\);

-- Location: LCCOMB_X34_Y69_N10
\VGA_C|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan0~7_combout\ = (\VGA_C|x\(12) & (!\VGA_C|LessThan0~6_combout\ & ((\VGA_C|x\(11)) # (!\VGA_C|x\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(12),
	datab => \VGA_C|x\(10),
	datac => \VGA_C|x\(11),
	datad => \VGA_C|LessThan0~6_combout\,
	combout => \VGA_C|LessThan0~7_combout\);

-- Location: FF_X35_Y69_N9
\VGA_C|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~16_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(0));

-- Location: LCCOMB_X36_Y69_N8
\VGA_C|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~2_combout\ = (\VGA_C|y\(1) & (!\VGA_C|Add1~1\)) # (!\VGA_C|y\(1) & ((\VGA_C|Add1~1\) # (GND)))
-- \VGA_C|Add1~3\ = CARRY((!\VGA_C|Add1~1\) # (!\VGA_C|y\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(1),
	datad => VCC,
	cin => \VGA_C|Add1~1\,
	combout => \VGA_C|Add1~2_combout\,
	cout => \VGA_C|Add1~3\);

-- Location: LCCOMB_X36_Y69_N0
\VGA_C|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~17_combout\ = (\VGA_C|Add1~2_combout\ & ((\VGA_C|LessThan1~3_combout\) # ((\VGA_C|LessThan1~0_combout\) # (!\VGA_C|y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~3_combout\,
	datab => \VGA_C|y\(11),
	datac => \VGA_C|Add1~2_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~17_combout\);

-- Location: FF_X36_Y69_N1
\VGA_C|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~17_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(1));

-- Location: LCCOMB_X36_Y69_N10
\VGA_C|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~4_combout\ = (\VGA_C|y\(2) & (!\VGA_C|Add1~3\ & VCC)) # (!\VGA_C|y\(2) & (\VGA_C|Add1~3\ $ (GND)))
-- \VGA_C|Add1~5\ = CARRY((!\VGA_C|y\(2) & !\VGA_C|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(2),
	datad => VCC,
	cin => \VGA_C|Add1~3\,
	combout => \VGA_C|Add1~4_combout\,
	cout => \VGA_C|Add1~5\);

-- Location: LCCOMB_X35_Y69_N22
\VGA_C|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~20_combout\ = ((\VGA_C|y\(11) & (!\VGA_C|LessThan1~3_combout\ & !\VGA_C|LessThan1~0_combout\))) # (!\VGA_C|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(11),
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|Add1~4_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~20_combout\);

-- Location: FF_X35_Y69_N23
\VGA_C|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~20_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(2));

-- Location: LCCOMB_X36_Y69_N12
\VGA_C|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~6_combout\ = (\VGA_C|y\(3) & ((\VGA_C|Add1~5\) # (GND))) # (!\VGA_C|y\(3) & (!\VGA_C|Add1~5\))
-- \VGA_C|Add1~7\ = CARRY((\VGA_C|y\(3)) # (!\VGA_C|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(3),
	datad => VCC,
	cin => \VGA_C|Add1~5\,
	combout => \VGA_C|Add1~6_combout\,
	cout => \VGA_C|Add1~7\);

-- Location: LCCOMB_X36_Y69_N14
\VGA_C|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~8_combout\ = (\VGA_C|y\(4) & (\VGA_C|Add1~7\ $ (GND))) # (!\VGA_C|y\(4) & (!\VGA_C|Add1~7\ & VCC))
-- \VGA_C|Add1~9\ = CARRY((\VGA_C|y\(4) & !\VGA_C|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(4),
	datad => VCC,
	cin => \VGA_C|Add1~7\,
	combout => \VGA_C|Add1~8_combout\,
	cout => \VGA_C|Add1~9\);

-- Location: LCCOMB_X35_Y69_N26
\VGA_C|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~15_combout\ = (\VGA_C|Add1~8_combout\ & (((\VGA_C|LessThan1~3_combout\) # (\VGA_C|LessThan1~0_combout\)) # (!\VGA_C|y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(11),
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|Add1~8_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~15_combout\);

-- Location: FF_X35_Y69_N27
\VGA_C|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~15_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(4));

-- Location: LCCOMB_X36_Y69_N16
\VGA_C|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~10_combout\ = (\VGA_C|y\(5) & (!\VGA_C|Add1~9\)) # (!\VGA_C|y\(5) & ((\VGA_C|Add1~9\) # (GND)))
-- \VGA_C|Add1~11\ = CARRY((!\VGA_C|Add1~9\) # (!\VGA_C|y\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(5),
	datad => VCC,
	cin => \VGA_C|Add1~9\,
	combout => \VGA_C|Add1~10_combout\,
	cout => \VGA_C|Add1~11\);

-- Location: LCCOMB_X35_Y69_N24
\VGA_C|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~19_combout\ = (\VGA_C|Add1~10_combout\ & ((\VGA_C|LessThan1~0_combout\) # ((\VGA_C|LessThan1~3_combout\) # (!\VGA_C|y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~0_combout\,
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|y\(11),
	datad => \VGA_C|Add1~10_combout\,
	combout => \VGA_C|Add1~19_combout\);

-- Location: FF_X35_Y69_N25
\VGA_C|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~19_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(5));

-- Location: LCCOMB_X36_Y69_N18
\VGA_C|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~12_combout\ = (\VGA_C|y\(6) & (!\VGA_C|Add1~11\ & VCC)) # (!\VGA_C|y\(6) & (\VGA_C|Add1~11\ $ (GND)))
-- \VGA_C|Add1~13\ = CARRY((!\VGA_C|y\(6) & !\VGA_C|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(6),
	datad => VCC,
	cin => \VGA_C|Add1~11\,
	combout => \VGA_C|Add1~12_combout\,
	cout => \VGA_C|Add1~13\);

-- Location: LCCOMB_X35_Y69_N16
\VGA_C|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~14_combout\ = ((!\VGA_C|LessThan1~0_combout\ & (!\VGA_C|LessThan1~3_combout\ & \VGA_C|y\(11)))) # (!\VGA_C|Add1~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~0_combout\,
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|y\(11),
	datad => \VGA_C|Add1~12_combout\,
	combout => \VGA_C|Add1~14_combout\);

-- Location: FF_X35_Y69_N17
\VGA_C|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~14_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(6));

-- Location: LCCOMB_X36_Y69_N20
\VGA_C|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~21_combout\ = (\VGA_C|y\(7) & ((\VGA_C|Add1~13\) # (GND))) # (!\VGA_C|y\(7) & (!\VGA_C|Add1~13\))
-- \VGA_C|Add1~22\ = CARRY((\VGA_C|y\(7)) # (!\VGA_C|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(7),
	datad => VCC,
	cin => \VGA_C|Add1~13\,
	combout => \VGA_C|Add1~21_combout\,
	cout => \VGA_C|Add1~22\);

-- Location: LCCOMB_X35_Y69_N2
\VGA_C|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~23_combout\ = ((\VGA_C|y\(11) & (!\VGA_C|LessThan1~3_combout\ & !\VGA_C|LessThan1~0_combout\))) # (!\VGA_C|Add1~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(11),
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|Add1~21_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~23_combout\);

-- Location: FF_X35_Y69_N3
\VGA_C|y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~23_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(7));

-- Location: LCCOMB_X36_Y69_N22
\VGA_C|Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~24_combout\ = (\VGA_C|y\(8) & (\VGA_C|Add1~22\ $ (GND))) # (!\VGA_C|y\(8) & (!\VGA_C|Add1~22\ & VCC))
-- \VGA_C|Add1~25\ = CARRY((\VGA_C|y\(8) & !\VGA_C|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(8),
	datad => VCC,
	cin => \VGA_C|Add1~22\,
	combout => \VGA_C|Add1~24_combout\,
	cout => \VGA_C|Add1~25\);

-- Location: LCCOMB_X36_Y69_N24
\VGA_C|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~27_combout\ = (\VGA_C|y\(9) & ((\VGA_C|Add1~25\) # (GND))) # (!\VGA_C|y\(9) & (!\VGA_C|Add1~25\))
-- \VGA_C|Add1~28\ = CARRY((\VGA_C|y\(9)) # (!\VGA_C|Add1~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(9),
	datad => VCC,
	cin => \VGA_C|Add1~25\,
	combout => \VGA_C|Add1~27_combout\,
	cout => \VGA_C|Add1~28\);

-- Location: LCCOMB_X36_Y69_N30
\VGA_C|Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~32_combout\ = ((!\VGA_C|LessThan1~0_combout\ & (\VGA_C|y\(11) & !\VGA_C|LessThan1~3_combout\))) # (!\VGA_C|Add1~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~0_combout\,
	datab => \VGA_C|y\(11),
	datac => \VGA_C|LessThan1~3_combout\,
	datad => \VGA_C|Add1~27_combout\,
	combout => \VGA_C|Add1~32_combout\);

-- Location: FF_X36_Y69_N31
\VGA_C|y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~32_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(9));

-- Location: LCCOMB_X36_Y69_N26
\VGA_C|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~29_combout\ = (\VGA_C|y\(10) & (\VGA_C|Add1~28\ $ (GND))) # (!\VGA_C|y\(10) & (!\VGA_C|Add1~28\ & VCC))
-- \VGA_C|Add1~30\ = CARRY((\VGA_C|y\(10) & !\VGA_C|Add1~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(10),
	datad => VCC,
	cin => \VGA_C|Add1~28\,
	combout => \VGA_C|Add1~29_combout\,
	cout => \VGA_C|Add1~30\);

-- Location: LCCOMB_X36_Y69_N4
\VGA_C|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~31_combout\ = (\VGA_C|Add1~29_combout\ & ((\VGA_C|LessThan1~3_combout\) # ((\VGA_C|LessThan1~0_combout\) # (!\VGA_C|y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~3_combout\,
	datab => \VGA_C|y\(11),
	datac => \VGA_C|Add1~29_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~31_combout\);

-- Location: FF_X36_Y69_N5
\VGA_C|y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~31_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(10));

-- Location: LCCOMB_X35_Y69_N10
\VGA_C|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan1~0_combout\ = (!\VGA_C|y\(10) & ((\VGA_C|y\(9)) # ((\VGA_C|y\(7) & !\VGA_C|y\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(7),
	datab => \VGA_C|y\(10),
	datac => \VGA_C|y\(9),
	datad => \VGA_C|y\(8),
	combout => \VGA_C|LessThan1~0_combout\);

-- Location: LCCOMB_X36_Y69_N28
\VGA_C|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~33_combout\ = \VGA_C|Add1~30\ $ (!\VGA_C|y\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VGA_C|y\(11),
	cin => \VGA_C|Add1~30\,
	combout => \VGA_C|Add1~33_combout\);

-- Location: LCCOMB_X35_Y69_N30
\VGA_C|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~35_combout\ = ((!\VGA_C|LessThan1~0_combout\ & (!\VGA_C|LessThan1~3_combout\ & \VGA_C|y\(11)))) # (!\VGA_C|Add1~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~0_combout\,
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|y\(11),
	datad => \VGA_C|Add1~33_combout\,
	combout => \VGA_C|Add1~35_combout\);

-- Location: FF_X35_Y69_N31
\VGA_C|y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~35_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(11));

-- Location: LCCOMB_X35_Y69_N14
\VGA_C|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~18_combout\ = ((\VGA_C|y\(11) & (!\VGA_C|LessThan1~3_combout\ & !\VGA_C|LessThan1~0_combout\))) # (!\VGA_C|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(11),
	datab => \VGA_C|LessThan1~3_combout\,
	datac => \VGA_C|Add1~6_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~18_combout\);

-- Location: FF_X35_Y69_N15
\VGA_C|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~18_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(3));

-- Location: LCCOMB_X35_Y69_N4
\VGA_C|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan1~2_combout\ = (\VGA_C|y\(2) & (!\VGA_C|y\(1) & !\VGA_C|y\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(2),
	datac => \VGA_C|y\(1),
	datad => \VGA_C|y\(0),
	combout => \VGA_C|LessThan1~2_combout\);

-- Location: LCCOMB_X35_Y69_N28
\VGA_C|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan1~1_combout\ = (!\VGA_C|y\(8) & (!\VGA_C|y\(5) & (!\VGA_C|y\(10) & \VGA_C|y\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(8),
	datab => \VGA_C|y\(5),
	datac => \VGA_C|y\(10),
	datad => \VGA_C|y\(6),
	combout => \VGA_C|LessThan1~1_combout\);

-- Location: LCCOMB_X35_Y69_N0
\VGA_C|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan1~3_combout\ = (\VGA_C|LessThan1~1_combout\ & ((\VGA_C|y\(3)) # ((\VGA_C|LessThan1~2_combout\) # (!\VGA_C|y\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(3),
	datab => \VGA_C|LessThan1~2_combout\,
	datac => \VGA_C|y\(4),
	datad => \VGA_C|LessThan1~1_combout\,
	combout => \VGA_C|LessThan1~3_combout\);

-- Location: LCCOMB_X36_Y69_N2
\VGA_C|Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|Add1~26_combout\ = (\VGA_C|Add1~24_combout\ & ((\VGA_C|LessThan1~3_combout\) # ((\VGA_C|LessThan1~0_combout\) # (!\VGA_C|y\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan1~3_combout\,
	datab => \VGA_C|y\(11),
	datac => \VGA_C|Add1~24_combout\,
	datad => \VGA_C|LessThan1~0_combout\,
	combout => \VGA_C|Add1~26_combout\);

-- Location: FF_X36_Y69_N3
\VGA_C|y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|Add1~26_combout\,
	ena => \VGA_C|LessThan0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|y\(8));

-- Location: LCCOMB_X32_Y69_N28
\VGA_C|process_1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~8_combout\ = (\VGA_C|y\(8)) # ((\VGA_C|y\(10)) # ((!\VGA_C|y\(7) & \VGA_C|y\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(8),
	datab => \VGA_C|y\(10),
	datac => \VGA_C|y\(7),
	datad => \VGA_C|y\(5),
	combout => \VGA_C|process_1~8_combout\);

-- Location: LCCOMB_X35_Y69_N12
\VGA_C|process_1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~6_combout\ = ((\VGA_C|y\(2)) # ((!\VGA_C|y\(1) & !\VGA_C|y\(0)))) # (!\VGA_C|y\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(4),
	datab => \VGA_C|y\(1),
	datac => \VGA_C|y\(2),
	datad => \VGA_C|y\(0),
	combout => \VGA_C|process_1~6_combout\);

-- Location: LCCOMB_X35_Y69_N20
\VGA_C|process_1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~4_combout\ = (\VGA_C|y\(6) & ((\VGA_C|y\(4)) # ((\VGA_C|y\(1) & \VGA_C|y\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(4),
	datab => \VGA_C|y\(1),
	datac => \VGA_C|y\(0),
	datad => \VGA_C|y\(6),
	combout => \VGA_C|process_1~4_combout\);

-- Location: LCCOMB_X32_Y69_N24
\VGA_C|process_1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~5_combout\ = (\VGA_C|y\(3) & (((!\VGA_C|y\(6))) # (!\VGA_C|y\(2)))) # (!\VGA_C|y\(3) & (((!\VGA_C|y\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(3),
	datab => \VGA_C|y\(2),
	datac => \VGA_C|y\(5),
	datad => \VGA_C|y\(6),
	combout => \VGA_C|process_1~5_combout\);

-- Location: LCCOMB_X32_Y69_N6
\VGA_C|process_1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~7_combout\ = (\VGA_C|process_1~4_combout\) # ((\VGA_C|process_1~5_combout\) # ((\VGA_C|y\(7) & \VGA_C|process_1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(7),
	datab => \VGA_C|process_1~6_combout\,
	datac => \VGA_C|process_1~4_combout\,
	datad => \VGA_C|process_1~5_combout\,
	combout => \VGA_C|process_1~7_combout\);

-- Location: LCCOMB_X32_Y69_N22
\VGA_C|process_1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~9_combout\ = (!\VGA_C|process_1~8_combout\ & (!\VGA_C|y\(9) & (\VGA_C|y\(11) & !\VGA_C|process_1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|process_1~8_combout\,
	datab => \VGA_C|y\(9),
	datac => \VGA_C|y\(11),
	datad => \VGA_C|process_1~7_combout\,
	combout => \VGA_C|process_1~9_combout\);

-- Location: FF_X32_Y69_N23
\VGA_C|vga_data_0.v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|process_1~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.v_sync~q\);

-- Location: FF_X36_Y69_N15
\data_1.v_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|vga_data_0.v_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_1.v_sync~q\);

-- Location: LCCOMB_X48_Y69_N28
\VGA_O|vga_vs~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_vs~feeder_combout\ = \data_1.v_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \data_1.v_sync~q\,
	combout => \VGA_O|vga_vs~feeder_combout\);

-- Location: FF_X48_Y69_N29
\VGA_O|vga_vs\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_vs~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_vs~q\);

-- Location: LCCOMB_X35_Y69_N18
\VGA_C|LessThan7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan7~0_combout\ = (\VGA_C|y\(5)) # ((\VGA_C|y\(4) & !\VGA_C|y\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_C|y\(5),
	datac => \VGA_C|y\(4),
	datad => \VGA_C|y\(3),
	combout => \VGA_C|LessThan7~0_combout\);

-- Location: LCCOMB_X32_Y69_N4
\VGA_C|LessThan7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan7~1_combout\ = (!\VGA_C|y\(8) & (\VGA_C|y\(7) & ((\VGA_C|y\(6)) # (!\VGA_C|LessThan7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(8),
	datab => \VGA_C|y\(6),
	datac => \VGA_C|y\(7),
	datad => \VGA_C|LessThan7~0_combout\,
	combout => \VGA_C|LessThan7~1_combout\);

-- Location: LCCOMB_X32_Y69_N10
\VGA_C|LessThan7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|LessThan7~2_combout\ = ((!\VGA_C|y\(10) & ((\VGA_C|LessThan7~1_combout\) # (\VGA_C|y\(9))))) # (!\VGA_C|y\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|y\(11),
	datab => \VGA_C|y\(10),
	datac => \VGA_C|LessThan7~1_combout\,
	datad => \VGA_C|y\(9),
	combout => \VGA_C|LessThan7~2_combout\);

-- Location: LCCOMB_X31_Y69_N14
\VGA_C|process_1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~10_combout\ = (\VGA_C|LessThan0~2_combout\ & ((\VGA_C|x\(9)) # ((\VGA_C|x\(8)) # (\VGA_C|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|x\(9),
	datab => \VGA_C|x\(8),
	datac => \VGA_C|LessThan0~3_combout\,
	datad => \VGA_C|LessThan0~2_combout\,
	combout => \VGA_C|process_1~10_combout\);

-- Location: LCCOMB_X32_Y69_N16
\VGA_C|process_1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|process_1~11_combout\ = (\VGA_C|LessThan7~2_combout\ & ((\VGA_C|process_1~10_combout\) # (!\VGA_C|x\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|LessThan7~2_combout\,
	datab => \VGA_C|x\(12),
	datad => \VGA_C|process_1~10_combout\,
	combout => \VGA_C|process_1~11_combout\);

-- Location: FF_X32_Y69_N17
\VGA_C|vga_data_0.blank_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|process_1~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.blank_n~q\);

-- Location: FF_X33_Y69_N9
\data_1.blank_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|vga_data_0.blank_n~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data_1.blank_n~q\);

-- Location: FF_X33_Y69_N3
\VGA_O|vga_blank_n\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \data_1.blank_n~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_blank_n~q\);

-- Location: FF_X32_Y69_N19
\VGA_C|vga_data_0.y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(8));

-- Location: LCCOMB_X32_Y69_N30
\VGA_C|vga_data_0.y[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|vga_data_0.y[9]~feeder_combout\ = \VGA_C|y\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_C|y\(9),
	combout => \VGA_C|vga_data_0.y[9]~feeder_combout\);

-- Location: FF_X32_Y69_N31
\VGA_C|vga_data_0.y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|vga_data_0.y[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(9));

-- Location: FF_X32_Y69_N29
\VGA_C|vga_data_0.y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(7));

-- Location: FF_X32_Y69_N3
\VGA_C|vga_data_0.y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(11));

-- Location: LCCOMB_X32_Y69_N20
\process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~1_combout\ = (\VGA_C|vga_data_0.y\(9) & (\VGA_C|vga_data_0.y\(7) & \VGA_C|vga_data_0.y\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|vga_data_0.y\(9),
	datab => \VGA_C|vga_data_0.y\(7),
	datad => \VGA_C|vga_data_0.y\(11),
	combout => \process_0~1_combout\);

-- Location: LCCOMB_X32_Y69_N26
\VGA_C|vga_data_0.y[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_C|vga_data_0.y[6]~feeder_combout\ = \VGA_C|y\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VGA_C|y\(6),
	combout => \VGA_C|vga_data_0.y[6]~feeder_combout\);

-- Location: FF_X32_Y69_N27
\VGA_C|vga_data_0.y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_C|vga_data_0.y[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(6));

-- Location: FF_X32_Y69_N21
\VGA_C|vga_data_0.y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(3));

-- Location: FF_X32_Y69_N9
\VGA_C|vga_data_0.y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(5));

-- Location: FF_X35_Y69_N19
\VGA_C|vga_data_0.y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(4));

-- Location: LCCOMB_X32_Y69_N8
\process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~0_combout\ = ((\VGA_C|vga_data_0.y\(3)) # ((\VGA_C|vga_data_0.y\(4)) # (!\VGA_C|vga_data_0.y\(5)))) # (!\VGA_C|vga_data_0.y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|vga_data_0.y\(6),
	datab => \VGA_C|vga_data_0.y\(3),
	datac => \VGA_C|vga_data_0.y\(5),
	datad => \VGA_C|vga_data_0.y\(4),
	combout => \process_0~0_combout\);

-- Location: FF_X35_Y69_N13
\VGA_C|vga_data_0.y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(2));

-- Location: FF_X35_Y69_N5
\VGA_C|vga_data_0.y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(1));

-- Location: FF_X35_Y69_N7
\VGA_C|vga_data_0.y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(10));

-- Location: FF_X35_Y69_N21
\VGA_C|vga_data_0.y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	asdata => \VGA_C|y\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_C|vga_data_0.y\(0));

-- Location: LCCOMB_X35_Y69_N6
\process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~2_combout\ = (\VGA_C|vga_data_0.y\(10)) # ((\VGA_C|vga_data_0.y\(2) & (!\VGA_C|vga_data_0.y\(1))) # (!\VGA_C|vga_data_0.y\(2) & (\VGA_C|vga_data_0.y\(1) & \VGA_C|vga_data_0.y\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|vga_data_0.y\(2),
	datab => \VGA_C|vga_data_0.y\(1),
	datac => \VGA_C|vga_data_0.y\(10),
	datad => \VGA_C|vga_data_0.y\(0),
	combout => \process_0~2_combout\);

-- Location: LCCOMB_X32_Y69_N14
\process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \process_0~3_combout\ = (((\process_0~0_combout\) # (\process_0~2_combout\)) # (!\process_0~1_combout\)) # (!\VGA_C|vga_data_0.y\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_C|vga_data_0.y\(8),
	datab => \process_0~1_combout\,
	datac => \process_0~0_combout\,
	datad => \process_0~2_combout\,
	combout => \process_0~3_combout\);

-- Location: FF_X32_Y69_N15
\rgb_1.b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rgb_1.b\(1));

-- Location: LCCOMB_X30_Y72_N24
\VGA_O|vga_r[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[0]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[0]~feeder_combout\);

-- Location: FF_X30_Y72_N25
\VGA_O|vga_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(0));

-- Location: LCCOMB_X30_Y72_N22
\VGA_O|vga_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[1]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[1]~feeder_combout\);

-- Location: FF_X30_Y72_N23
\VGA_O|vga_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(1));

-- Location: LCCOMB_X30_Y72_N16
\VGA_O|vga_r[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[2]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[2]~feeder_combout\);

-- Location: FF_X30_Y72_N17
\VGA_O|vga_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(2));

-- Location: LCCOMB_X30_Y72_N6
\VGA_O|vga_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[3]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[3]~feeder_combout\);

-- Location: FF_X30_Y72_N7
\VGA_O|vga_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(3));

-- Location: LCCOMB_X21_Y72_N0
\VGA_O|vga_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[4]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[4]~feeder_combout\);

-- Location: FF_X21_Y72_N1
\VGA_O|vga_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(4));

-- Location: LCCOMB_X30_Y72_N4
\VGA_O|vga_r[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[5]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[5]~feeder_combout\);

-- Location: FF_X30_Y72_N5
\VGA_O|vga_r[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(5));

-- Location: LCCOMB_X11_Y72_N16
\VGA_O|vga_r[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[6]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[6]~feeder_combout\);

-- Location: FF_X11_Y72_N17
\VGA_O|vga_r[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(6));

-- Location: LCCOMB_X21_Y72_N2
\VGA_O|vga_r[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_r[7]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_r[7]~feeder_combout\);

-- Location: FF_X21_Y72_N3
\VGA_O|vga_r[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_r[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_r\(7));

-- Location: LCCOMB_X11_Y72_N2
\VGA_O|vga_g[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[0]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[0]~feeder_combout\);

-- Location: FF_X11_Y72_N3
\VGA_O|vga_g[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(0));

-- Location: LCCOMB_X25_Y72_N0
\VGA_O|vga_g[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[1]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[1]~feeder_combout\);

-- Location: FF_X25_Y72_N1
\VGA_O|vga_g[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(1));

-- Location: LCCOMB_X11_Y72_N0
\VGA_O|vga_g[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[2]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[2]~feeder_combout\);

-- Location: FF_X11_Y72_N1
\VGA_O|vga_g[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(2));

-- Location: LCCOMB_X25_Y72_N2
\VGA_O|vga_g[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[3]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[3]~feeder_combout\);

-- Location: FF_X25_Y72_N3
\VGA_O|vga_g[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(3));

-- Location: LCCOMB_X17_Y72_N0
\VGA_O|vga_g[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[4]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[4]~feeder_combout\);

-- Location: FF_X17_Y72_N1
\VGA_O|vga_g[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(4));

-- Location: LCCOMB_X17_Y72_N2
\VGA_O|vga_g[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[5]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[5]~feeder_combout\);

-- Location: FF_X17_Y72_N3
\VGA_O|vga_g[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(5));

-- Location: LCCOMB_X21_Y72_N12
\VGA_O|vga_g[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[6]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[6]~feeder_combout\);

-- Location: FF_X21_Y72_N13
\VGA_O|vga_g[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(6));

-- Location: LCCOMB_X24_Y72_N0
\VGA_O|vga_g[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_g[7]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_g[7]~feeder_combout\);

-- Location: FF_X24_Y72_N1
\VGA_O|vga_g[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_g[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_g\(7));

-- Location: LCCOMB_X30_Y72_N30
\VGA_O|vga_b[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[0]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[0]~feeder_combout\);

-- Location: FF_X30_Y72_N31
\VGA_O|vga_b[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(0));

-- Location: LCCOMB_X30_Y72_N12
\VGA_O|vga_b[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[1]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[1]~feeder_combout\);

-- Location: FF_X30_Y72_N13
\VGA_O|vga_b[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(1));

-- Location: LCCOMB_X24_Y72_N2
\VGA_O|vga_b[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[2]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[2]~feeder_combout\);

-- Location: FF_X24_Y72_N3
\VGA_O|vga_b[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(2));

-- Location: LCCOMB_X30_Y72_N2
\VGA_O|vga_b[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[3]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[3]~feeder_combout\);

-- Location: FF_X30_Y72_N3
\VGA_O|vga_b[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(3));

-- Location: LCCOMB_X32_Y69_N12
\VGA_O|vga_b[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[4]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[4]~feeder_combout\);

-- Location: FF_X32_Y69_N13
\VGA_O|vga_b[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(4));

-- Location: LCCOMB_X30_Y72_N20
\VGA_O|vga_b[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[5]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[5]~feeder_combout\);

-- Location: FF_X30_Y72_N21
\VGA_O|vga_b[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(5));

-- Location: LCCOMB_X24_Y72_N16
\VGA_O|vga_b[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[6]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[6]~feeder_combout\);

-- Location: FF_X24_Y72_N17
\VGA_O|vga_b[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(6));

-- Location: LCCOMB_X30_Y72_N10
\VGA_O|vga_b[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_O|vga_b[7]~feeder_combout\ = \rgb_1.b\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rgb_1.b\(1),
	combout => \VGA_O|vga_b[7]~feeder_combout\);

-- Location: FF_X30_Y72_N11
\VGA_O|vga_b[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~inputclkctrl_outclk\,
	d => \VGA_O|vga_b[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VGA_O|vga_b\(7));

ww_vga_clk <= \vga_clk~output_o\;

ww_vga_hs <= \vga_hs~output_o\;

ww_vga_vs <= \vga_vs~output_o\;

ww_vga_sync_n <= \vga_sync_n~output_o\;

ww_vga_blank_n <= \vga_blank_n~output_o\;

ww_vga_r(0) <= \vga_r[0]~output_o\;

ww_vga_r(1) <= \vga_r[1]~output_o\;

ww_vga_r(2) <= \vga_r[2]~output_o\;

ww_vga_r(3) <= \vga_r[3]~output_o\;

ww_vga_r(4) <= \vga_r[4]~output_o\;

ww_vga_r(5) <= \vga_r[5]~output_o\;

ww_vga_r(6) <= \vga_r[6]~output_o\;

ww_vga_r(7) <= \vga_r[7]~output_o\;

ww_vga_g(0) <= \vga_g[0]~output_o\;

ww_vga_g(1) <= \vga_g[1]~output_o\;

ww_vga_g(2) <= \vga_g[2]~output_o\;

ww_vga_g(3) <= \vga_g[3]~output_o\;

ww_vga_g(4) <= \vga_g[4]~output_o\;

ww_vga_g(5) <= \vga_g[5]~output_o\;

ww_vga_g(6) <= \vga_g[6]~output_o\;

ww_vga_g(7) <= \vga_g[7]~output_o\;

ww_vga_b(0) <= \vga_b[0]~output_o\;

ww_vga_b(1) <= \vga_b[1]~output_o\;

ww_vga_b(2) <= \vga_b[2]~output_o\;

ww_vga_b(3) <= \vga_b[3]~output_o\;

ww_vga_b(4) <= \vga_b[4]~output_o\;

ww_vga_b(5) <= \vga_b[5]~output_o\;

ww_vga_b(6) <= \vga_b[6]~output_o\;

ww_vga_b(7) <= \vga_b[7]~output_o\;
END structure;


