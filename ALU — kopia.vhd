LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU IS
  PORT (
    A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 -- liczba 1
    B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	 -- liczba 2
    Salu : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
	 -- rozkaz
    LDF : IN STD_LOGIC;
	 -- czy liczymy flagi
    clk : IN STD_LOGIC;
    Y : OUT std_logic_vector (15 DOWNTO 0);
	 -- wyjscie
    C, Z, S : OUT STD_LOGIC
	 -- carry
	 -- zero
	 -- signed
  );
END ALU;

ARCHITECTURE rtl OF ALU IS
BEGIN
  PROCESS (Salu, A, B, clk)
    VARIABLE res, AA, BB, CC : signed (16 DOWNTO 0);
	 -- res: liczba wyjściowa
	 -- AA: liczba A poszerzona o 1
	 -- BB: liczba B poszerzona o 1
	 -- CC: pomocicza do carry
    VARIABLE CF, ZF, SF : STD_LOGIC;
  BEGIN
    AA(16) := A(15);
    AA(15 DOWNTO 0) := signed(A);
    BB(16) := B(15);
    BB(15 DOWNTO 0) := signed(B);
    CC(0) := CF;
    CC(16 DOWNTO 1) := "0000000000000000";
    CASE Salu IS
      WHEN "00000" => res := AA;
      WHEN "00001" => res := BB;
      WHEN "00010" => res := AA + BB;
      WHEN "00011" => res := AA - BB;
      WHEN "00100" => res := AA OR BB;
      WHEN "00101" => res := AA AND BB;
      WHEN "00110" => res := AA XOR BB;
      WHEN "00111" => res := AA XNOR BB;
      WHEN "01000" => res := NOT AA;
      WHEN "01001" => res := - AA;
      WHEN "01010" => res := "00000000000000000";
      WHEN "01011" => res := AA + BB + CC;
      WHEN "01100" => res := AA - BB - CC;
      WHEN "01101" => res := AA + 1;
      WHEN "01110" => res(16 DOWNTO 1) := AA(15 DOWNTO 0);
        res(0) := '0';
      WHEN "01111" => res(16) := AA(16);
        res(15 DOWNTO 0) := AA(16 DOWNTO 1);
      WHEN "10000" => res := NOT BB;
      WHEN "10001" => res := - BB;
      WHEN "10010" => res := BB + 1;
      WHEN "10011" => res := AA - 1;
      WHEN "10100" => res := BB - 1;
      WHEN "10101" => res(15 DOWNTO 0) := AA(7 DOWNTO 0) * BB(7 DOWNTO 0);
        res(16) := '0';
      WHEN "10110" =>
        IF BB = "00000000000000000" THEN
          res := "00000000000000000";
        ELSE
          res(15 DOWNTO 0) := "/"(AA(15 DOWNTO 0), BB(15 DOWNTO 0));
          res(16) := '0';
        END IF;
      WHEN OTHERS => res := "00000000000000000";
    END CASE;
    Y <= std_logic_vector(res(15 DOWNTO 0));
    Z <= ZF;
    S <= SF;
    C <= CF;
    IF (clk'event AND clk = '1') THEN
      IF (LDF = '1') THEN
        IF (res = "00000000000000000") THEN
          ZF := '1';
        ELSE
          ZF := '0';
        END IF;
        IF (res(15) = '1') THEN
          SF := '1';
        ELSE
          SF := '0';
        END IF;
        CF := res(16) XOR res(15);
      END IF;
    END IF;
  END PROCESS;
END rtl;