LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
ENTITY Rejestry IS
  PORT (
    clk, reset : IN STD_LOGIC;
    DI : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    -- wejście z pamięci
    BA : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
    -- dane
    Sbb : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- przypisanie danego rejestru do wyjścia BB
    Sbc : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- przypisanie danego rejestru do wyjścia BC
    Sba : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    -- przypisanie wartości spod BA do danego rejestru
    Sid : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    -- operacje na rejestrach PC, SP, AD
    -- licznik
    Sa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    -- przypisanie rejestru (AD || PC || SP || ATMP) do wyjścia A
    BB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
    BC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    -- na dwa powyższe wpływa DI
    -- wyjścia
    ADR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    -- na zdjęciach wyjście A
    IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    -- przekazanie rozkazu
  );
END ENTITY;

ARCHITECTURE rtl OF Rejestry IS
BEGIN
  PROCESS (clk, Sbb, Sbc, Sba, Sid, Sa, DI)
    VARIABLE IR, TMP, R1, R2, R3, R4, R5, R6, R7, R8 : STD_LOGIC_VECTOR (15 DOWNTO 0);
    -- IR: pobieranie rozkazów, jaki rozkaz
    -- TMP: Tymczasowy rejestr
    -- A-F: rejestry robocze 
    VARIABLE AD, PC, SP, ATMP : signed(31 DOWNTO 0);
    -- AD: Rejestr adresy
    -- PC: pobieranie rozkazu, program counter
    -- SP: Stos, ile jest na stosie
    -- ATMP: Tymczasowy rejestr
  BEGIN
    IF (reset = '1') THEN
      IR := "0000000000000000";
      TMP := "0000000000000000";
      R1 := "0000000000000000";
      R2 := "0000000000000000";
      R3 := "0000000000000000";
      R4 := "0000000000000000";
      R5 := "0000000000000000";
      R6 := "0000000000000000";
      R7 := "0000000000000000";
      R8 := "0000000000000000";
      AD := to_signed(0, ad'length);
      PC := to_signed(0, pc'length);
      SP := to_signed(0, sp'length);
      ATMP := to_signed(0, atmp'length);
    END IF;
    IF (clk'event AND clk = '1') THEN
      CASE Sid IS
        WHEN "001" =>
          PC := PC + 1;
        WHEN "010" =>
          SP := SP + 1;
        WHEN "011" =>
          SP := SP - 1;
        WHEN "100" =>
          AD := AD + 1;
        WHEN "101" =>
          AD := AD - 1;
        WHEN OTHERS =>
          NULL;
      END CASE;
      CASE Sba IS
        WHEN "00000" => IR := BA;
        WHEN "00001" => TMP := BA;
        WHEN "00010" => R1 := BA;
        WHEN "00011" => R2 := BA;
        WHEN "00100" => R3 := BA;
        WHEN "00101" => R4 := BA;
        WHEN "00110" => R5 := BA;
        WHEN "00111" => R6 := BA;
        WHEN "01000" => R7 := BA;
        WHEN "01001" => R8 := BA;
        WHEN "01010" => AD(15 DOWNTO 0) := SIGNED(BA);
        WHEN "01011" => AD(31 DOWNTO 16) := SIGNED(BA);
        WHEN "01100" => PC(15 DOWNTO 0) := SIGNED(BA);
        WHEN "01101" => PC(31 DOWNTO 16) := SIGNED(BA);
        WHEN "01110" => SP(15 DOWNTO 0) := SIGNED(BA);
        WHEN "01111" => SP(31 DOWNTO 16) := SIGNED(BA);
        WHEN "10000" => ATMP(15 DOWNTO 0) := SIGNED(BA);
        WHEN "10001" => ATMP(31 DOWNTO 16) := SIGNED(BA);
        WHEN OTHERS => NULL;
      END CASE;
    END IF;
    CASE Sbb IS
      WHEN "00000" => BB <= DI;
      WHEN "00001" => BB <= TMP;
      WHEN "00010" => BB <= R1;
      WHEN "00011" => BB <= R2;
      WHEN "00100" => BB <= R3;
      WHEN "00101" => BB <= R4;
      WHEN "00110" => BB <= R5;
      WHEN "00111" => BB <= R6;
      WHEN "01000" => BB <= R7;
      WHEN "01001" => BB <= R8;
      WHEN "01010" => BB <= STD_LOGIC_VECTOR(AD(15 DOWNTO 0));
      WHEN "01011" => BB <= STD_LOGIC_VECTOR(AD(31 DOWNTO 16));
      WHEN "01100" => BB <= STD_LOGIC_VECTOR(PC(15 DOWNTO 0));
      WHEN "01101" => BB <= STD_LOGIC_VECTOR(PC(31 DOWNTO 16));
      WHEN "01110" => BB <= STD_LOGIC_VECTOR(SP(15 DOWNTO 0));
      WHEN "01111" => BB <= STD_LOGIC_VECTOR(SP(31 DOWNTO 16));
      WHEN "10000" => BB <= STD_LOGIC_VECTOR(ATMP(15 DOWNTO 0));
      WHEN "10001" => BB <= STD_LOGIC_VECTOR(ATMP(31 DOWNTO 16));
      WHEN OTHERS => BB <= "0000000000000000";
    END CASE;
    CASE Sbc IS
      WHEN "00000" => BC <= DI;
      WHEN "00001" => BC <= TMP;
      WHEN "00010" => BC <= R1;
      WHEN "00011" => BC <= R2;
      WHEN "00100" => BC <= R3;
      WHEN "00101" => BC <= R4;
      WHEN "00110" => BC <= R5;
      WHEN "00111" => BC <= R6;
      WHEN "01000" => BC <= R7;
      WHEN "01001" => BC <= R8;
      WHEN "01010" => BC <= STD_LOGIC_VECTOR(AD(15 DOWNTO 0));
      WHEN "01011" => BC <= STD_LOGIC_VECTOR(AD(31 DOWNTO 16));
      WHEN "01100" => BC <= STD_LOGIC_VECTOR(PC(15 DOWNTO 0));
      WHEN "01101" => BC <= STD_LOGIC_VECTOR(PC(31 DOWNTO 16));
      WHEN "01110" => BC <= STD_LOGIC_VECTOR(SP(15 DOWNTO 0));
      WHEN "01111" => BC <= STD_LOGIC_VECTOR(SP(31 DOWNTO 16));
      WHEN "10000" => BC <= STD_LOGIC_VECTOR(ATMP(15 DOWNTO 0));
      WHEN "10001" => BC <= STD_LOGIC_VECTOR(ATMP(31 DOWNTO 16));
      WHEN OTHERS => Bc <= "0000000000000000";
    END CASE;
    CASE Sa IS
      WHEN "00" => ADR <= STD_LOGIC_VECTOR(AD);
      WHEN "01" => ADR <= STD_LOGIC_VECTOR(PC);
      WHEN "10" => ADR <= STD_LOGIC_VECTOR(SP);
      WHEN "11" => ADR <= STD_LOGIC_VECTOR(ATMP);
    END CASE;
    IRout <= IR;
  END PROCESS;
END rtl;