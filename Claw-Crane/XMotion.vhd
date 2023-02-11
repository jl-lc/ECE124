--library ieee;
--use ieee.std_logic_1164.all;
--
-------------------------------------------------------------------------------------------------------------
----
--
--entity Comp_Motion is 
--port (
--	CLK, RESET, ALTB, AEQB, AGTB, motion, ext_out													: in std_logic      --
--	CLK_EN, up_down, ext_en, error																	: out std_logic	--
--);
--end Comp_Motion;
--
--
--architecture LOGIC of Comp_Motion is 
--
----absolute genius move 
--component State_Machine_Grabber IS Port
--(
-- clk_input, reset, grappler, grappler_en						: IN std_logic;							--I0 is enable, I1 is pb
-- LED1 						: OUT std_logic						--o1 is lr, o2 is clkEN, o3 is ext_out
-- );
--end component;
--
--signal motion_in : std_logic := '0';
--
--begin
--
--
--process (CLK, RESET) is
--begin
--	if (RESET = '1') then
--		CLK_EN <= '0';
--		up_down <= '-';
--		ext_en <= '1';
--		motion_in <= '0'
--		error <= '0';
--			
--	elsif (rising_edge(CLK)) then
--		if ((motion_in = '1') AND (ext_out = '1')) then
--			error <= '1';
--			CLK_EN <= '0';
--			up_down <= '-';
--			ext_en <= '1';
--			motion_in <= '0';
--
--		elsif ((motion_in = '1') AND (ext_out = '0')) then
--			if (AEQB = '1') then
--				CLK_EN <= '0';
--				up_down <= '-';
--				ext_en <= '1';
--				motion_in <= '0';
--				error <= '0';
--			elsif (ALTB = '1') then
--				CLK_EN <= '1';
--				up_down <= '0';
--				ext_en <= '0';
--				error <= '0';
--			elsif (AGTB = '1') then
--				CLK_EN <= '1';
--				up_down <= '1';
--				ext_en <= '0';
--				error <= '0';
--			end if;
--		end if;
--		
--	end if;
--	
--end process;
--
--INST1: State_Machine_Grabber port map(CLK, RESET, motion, '1', ext_pos, motion_in);																	--
--
--end LOGIC;
