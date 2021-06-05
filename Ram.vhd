LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	PORT (
		clk : IN STD_LOGIC;
		adr : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		we, re : IN STD_LOGIC;
		data : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ram;

ARCHITECTURE arch OF ram IS
	TYPE mem IS ARRAY(0 TO 8191) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_block : mem;
	attribute ram_init_file : string;
	attribute ram_init_file of ram_block:
	signal is "Procesor.mif";
BEGIN
	PROCESS (clk)
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF (re = '1') THEN
				data <= ram_block(to_integer(unsigned(adr(12 downto 0))));
			END IF;
			IF (we = '1') THEN
				ram_block(to_integer(unsigned(adr(12 downto 0)))) <= data;
			END IF;
		END IF;
	END PROCESS;
END arch;