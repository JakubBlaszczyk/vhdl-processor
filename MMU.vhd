LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY MMU IS
     PORT (
          ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
          -- adres odczytu
          DO : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
          -- dane do zapisu z ALU
          Smar, Smbr, WRin, RDin, Sinternal : IN STD_LOGIC;
          -- Smar: czy zapis adr
          -- Smbr: czy zapis do
          -- WRin: 0 - zapis do D wysokiej impedancji (nieustalony)
          --       1 - zapis do D MBR
          -- RDin: czy odczyt do MBR z D
          Sseg : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
          -- Sseg: sygnał sterujący do segmentów
          AD : OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
          -- adres zapisu
          D : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          -- zapis/odczyt z RAMU
          DI : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
          -- dane zczytane z pamieci dla ALU
          WR, RD : OUT STD_LOGIC
          -- czy wpisywanie
          -- czy czytanie
     );
END ENTITY;

ARCHITECTURE rtl OF MMU IS
BEGIN
     PROCESS (Smar, ADR, Smbr, DO, D, WRin, RDin)
          VARIABLE MBRin, MBRout : STD_LOGIC_VECTOR(15 DOWNTO 0);
          -- dane in, out
          VARIABLE MAR : STD_LOGIC_VECTOR(31 DOWNTO 0);
          -- adres
          VARIABLE CS, DS, SS : STD_LOGIC_VECTOR(15 DOWNTO 0);
     BEGIN
          IF (Smar = '1') THEN
               MAR := ADR;
          END IF;

          IF (Sinternal = '0') then
               IF (Smbr = '1') THEN
                    MBRout := DO;
               END IF;
               IF (RDin = '1') THEN
                    MBRin := D;
               END IF;
               IF (WRin = '1') THEN
                    D <= MBRout;
               ELSE
                    D <= "ZZZZZZZZZZZZZZZZ";
               END IF;
          ELSIF (Sinternal = '1') then
               IF (Smbr = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => MBRout := CS;
                         WHEN "10" => MBRout := DS;
                         WHEN "11" => MBRout := SS;
                         WHEN OTHERS => NULL;
                    END CASE;
               END IF;
               IF (RDin = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => CS := D;
                         WHEN "10" => DS := D;
                         WHEN "11" => SS := D;
                         WHEN OTHERS => NULL;
                    END CASE;
               END IF;
               IF (WRin = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => D <= CS;
                         WHEN "10" => D <= DS;
                         WHEN "11" => D <= SS;
                         WHEN OTHERS => D <= "ZZZZZZZZZZZZZZZZ";
                    END CASE;
               END IF;
          END IF;

          IF (Rdin = '0' AND Wrin = '0') then
               CASE(Sseg) IS
                    WHEN "01" => CS := DO;
                    WHEN "10" => DS := DO;
                    WHEN "11" => SS := DO;
                    WHEN OTHERS => NULL;
               END CASE;
          END IF;

          DI <= MBRin;
          AD <= MAR;
          WR <= WRin;
          RD <= RDin;
     END PROCESS;
END rtl;