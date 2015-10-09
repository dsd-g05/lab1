-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "09/28/2015 13:04:48"
                                                            
-- Vhdl Test Bench template for design  :  g05_lab1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;  
use IEEE.NUMERIC_STD.all;                              

ENTITY g05_lab1_vhd_tst IS
END g05_lab1_vhd_tst;
ARCHITECTURE g05_lab1_arch OF g05_lab1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL num1s : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT g05_num1s
	PORT (
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	num1s : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : g05_num1s
	PORT MAP (
-- list connections between master ports and signals
	X => X,
	num1s => num1s
	);                                           
always : PROCESS   
BEGIN   
	FOR i IN 0 TO 15 LOOP
	X <= STD_LOGIC_VECTOR(to_unsigned(i,4));
	WAIT FOR 10 ns;
	END LOOP;
	
WAIT; 
                                                       
END PROCESS always;                                          
END g05_lab1_arch;
