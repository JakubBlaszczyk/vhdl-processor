LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	PORT (
		clk : IN STD_LOGIC;
		adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		we, re : IN STD_LOGIC;
		data : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ram;

ARCHITECTURE arch OF ram IS
	TYPE mem IS ARRAY(0 TO 1048575) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_block : mem;
BEGIN
	PROCESS (clk)
	BEGIN
		IF (clk'event AND clk = '1') THEN
			IF (re = '1') THEN
				data <= ram_block(to_integer(unsigned(adr)));
			END IF;
			IF (we = '1') THEN
				ram_block(to_integer(unsigned(adr))) <= data;
			END IF;
		END IF;
	END PROCESS;
END arch;