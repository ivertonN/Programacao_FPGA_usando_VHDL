--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:51:03 06/30/2019
-- Design Name:   
-- Module Name:   /home/ise/SD_projects/SD Projeto 2/LCD_interface/test_lcd.vhd
-- Project Name:  LCD_interface
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: lcd
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY test_lcd IS
END test_lcd;
 
ARCHITECTURE behavior OF test_lcd IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT lcd
    PORT(
         LCD_DB : OUT  std_logic_vector(7 downto 0);
         RS : OUT  std_logic;
         RW : OUT  std_logic;
         CLK : IN  std_logic;
         OE : OUT  std_logic;
         rst : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal CLK : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal LCD_DB : std_logic_vector(7 downto 0);
   signal RS : std_logic;
   signal RW : std_logic;
   signal OE : std_logic;

   -- Clock period definitions
   constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: lcd PORT MAP (
          LCD_DB => LCD_DB,
          RS => RS,
          RW => RW,
          CLK => CLK,
          OE => OE,
          rst => rst
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for CLK_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
