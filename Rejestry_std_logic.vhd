LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Rejestry_std_logic IS
    PORT (
        clk : IN STD_LOGIC;
        DI : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
        -- ??
        BA : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        -- dane
        Sbb : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- przypisanie danego rejestru do wyjścia BB
        Sbc : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- przypisanie danego rejestru do wyjścia BC
        Sba : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        -- przypisanie wartości spod BA do danego rejestru
        Sid : IN STD_LOGIC_VECTOR (2 DOWNTO 0);
        -- operacje na rejestrach PC, SP, AD
        -- licznik
        Sa : IN STD_LOGIC_VECTOR (1 DOWNTO 0);
        -- przypisanie rejestru (AD || PC || SP || ATMP) do wyjścia A
        BB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        BC : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
        -- na dwa powyższe wpływa DI
        -- wyjścia
        ADR : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
        -- na zdjęciach wyjście A
        IRout : OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
        -- przekazanie rozkazu
    );
END ENTITY;

ARCHITECTURE rtl OF Rejestry_std_logic IS
BEGIN
    PROCESS (clk, Sbb, Sbc, Sba, Sid, Sa, DI)
        VARIABLE IR, TMP, A, B, C, D, E, F : signed (15 DOWNTO 0);
        -- IR: pobieranie rozkazów, jaki rozkaz
        -- TMP: Tymczasowy rejestr
        -- A-F: rejestry robocze 
        VARIABLE AD, PC, SP, ATMP : signed (31 DOWNTO 0);
        -- AD: Rejestr adresy
        -- PC: pobieranie rozkazu, program counter
        -- SP: Stos, ile jest na stosie
        -- ATMP: Tymczasowy rejestr
    BEGIN
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
                WHEN "0000" => IR := signed(BA);
                WHEN "0001" => TMP := signed(BA);
                WHEN "0010" => A := signed(BA);
                WHEN "0011" => B := signed(BA);
                WHEN "0100" => C := signed(BA);
                WHEN "0101" => D := signed(BA);
                WHEN "0110" => E := signed(BA);
                WHEN "0111" => F := signed(BA);
                WHEN "1000" => AD(15 DOWNTO 0) := signed(BA);
                WHEN "1001" => AD(31 DOWNTO 16) := signed(BA);
                WHEN "1010" => PC(15 DOWNTO 0) := signed(BA);
                WHEN "1011" => PC(31 DOWNTO 16) := signed(BA);
                WHEN "1100" => SP(15 DOWNTO 0) := signed(BA);
                WHEN "1101" => SP(31 DOWNTO 16) := signed(BA);
                WHEN "1110" => ATMP(15 DOWNTO 0) := signed(BA);
                WHEN "1111" => ATMP(31 DOWNTO 16) := signed(BA);
            END CASE;
        END IF;
        CASE Sbb IS
            WHEN "0000" => BB <= STD_LOGIC_VECTOR(DI);
            WHEN "0001" => BB <= STD_LOGIC_VECTOR(TMP);
            WHEN "0010" => BB <= STD_LOGIC_VECTOR(A);
            WHEN "0011" => BB <= STD_LOGIC_VECTOR(B);
            WHEN "0100" => BB <= STD_LOGIC_VECTOR(C);
            WHEN "0101" => BB <= STD_LOGIC_VECTOR(D);
            WHEN "0110" => BB <= STD_LOGIC_VECTOR(E);
            WHEN "0111" => BB <= STD_LOGIC_VECTOR(F);
            WHEN "1000" => BB <= STD_LOGIC_VECTOR(AD(15 DOWNTO 0));
            WHEN "1001" => BB <= STD_LOGIC_VECTOR(AD(31 DOWNTO 16));
            WHEN "1010" => BB <= STD_LOGIC_VECTOR(PC(15 DOWNTO 0));
            WHEN "1011" => BB <= STD_LOGIC_VECTOR(PC(31 DOWNTO 16));
            WHEN "1100" => BB <= STD_LOGIC_VECTOR(SP(15 DOWNTO 0));
            WHEN "1101" => BB <= STD_LOGIC_VECTOR(SP(31 DOWNTO 16));
            WHEN "1110" => BB <= STD_LOGIC_VECTOR(ATMP(15 DOWNTO 0));
            WHEN "1111" => BB <= STD_LOGIC_VECTOR(ATMP(31 DOWNTO 16));
        END CASE;
        CASE Sbc IS
            WHEN "0000" => BC <= STD_LOGIC_VECTOR(DI);
            WHEN "0001" => BC <= STD_LOGIC_VECTOR(TMP);
            WHEN "0010" => BC <= STD_LOGIC_VECTOR(A);
            WHEN "0011" => BC <= STD_LOGIC_VECTOR(B);
            WHEN "0100" => BC <= STD_LOGIC_VECTOR(C);
            WHEN "0101" => BC <= STD_LOGIC_VECTOR(D);
            WHEN "0110" => BC <= STD_LOGIC_VECTOR(E);
            WHEN "0111" => BC <= STD_LOGIC_VECTOR(F);
            WHEN "1000" => BC <= STD_LOGIC_VECTOR(AD(15 DOWNTO 0));
            WHEN "1001" => BC <= STD_LOGIC_VECTOR(AD(31 DOWNTO 16));
            WHEN "1010" => BC <= STD_LOGIC_VECTOR(PC(15 DOWNTO 0));
            WHEN "1011" => BC <= STD_LOGIC_VECTOR(PC(31 DOWNTO 16));
            WHEN "1100" => BC <= STD_LOGIC_VECTOR(SP(15 DOWNTO 0));
            WHEN "1101" => BC <= STD_LOGIC_VECTOR(SP(31 DOWNTO 16));
            WHEN "1110" => BC <= STD_LOGIC_VECTOR(ATMP(15 DOWNTO 0));
            WHEN "1111" => BC <= STD_LOGIC_VECTOR(ATMP(31 DOWNTO 16));
        END CASE;
        CASE Sa IS
            WHEN "00" => ADR <= STD_LOGIC_VECTOR(AD);
            WHEN "01" => ADR <= STD_LOGIC_VECTOR(PC);
            WHEN "10" => ADR <= STD_LOGIC_VECTOR(SP);
            WHEN "11" => ADR <= STD_LOGIC_VECTOR(ATMP);
        END CASE;
        IRout <= STD_LOGIC_VECTOR(IR);
    END PROCESS;
END rtl;