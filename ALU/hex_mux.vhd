library ieee;
use ieee.std_logic_1164.all;

------------------------------------------------------------------------------------------------------------------------------------------
--Multiplexer (4 to 1) to select the output based on inputs and select 2bit inputs
entity hex_mux is 
port (
	hex_num3,hex_num2,hex_num1,hex_num0 : in std_logic_vector(3 downto 0);     --4-bit inputs for multiplexer input
	mux_select									: in std_logic_vector(1 downto 0);     --Selects which ouptut to display
	hex_out										: out std_logic_vector(3 downto 0)     --Result output of the hex inputs
);
end hex_mux;
architecture mux_logic of hex_mux is 
begin

with mux_select(1 downto 0) select 
hex_out <= hex_num0 when "00",        --Selects first input when mux_select is 00
			  hex_num1 when "01",        --Selects second input when mux_select is 01
			  hex_num2 when "10",        --Selects third input when mux_select is 10
			  hex_num3 when "11";        --Selects fourth input when mux_select is 11
end mux_logic;






