LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ram IS
	PORT (
		clk : IN STD_LOGIC;
		adr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
		we, re : IN STD_LOGIC;
		dataIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		dataOut : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END ram;

ARCHITECTURE arch OF ram IS
	TYPE mem IS ARRAY(0 TO 4294967295) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_block : mem;
BEGIN
	PROCESS (clk)
	BEGIN
		IF (clk'event AND clk = '1') then
			IF (re = '1') THEN
				dataOut <= ram_block(to_integer(unsigned(adr)));
				end if;
			IF (we = '1') THEN
				ram_block(to_integer(unsigned(adr))) <= dataIn;
			END IF;
		END IF;
	END PROCESS;
END arch;