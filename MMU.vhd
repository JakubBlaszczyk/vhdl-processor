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
          AD : OUT STD_LOGIC_VECTOR (19 DOWNTO 0);
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
          VARIABLE MAR : STD_LOGIC_VECTOR(19 DOWNTO 0);
          -- adres
          VARIABLE CS, DS, SS : STD_LOGIC_VECTOR(19 DOWNTO 0);
     BEGIN
          IF (Smar = '1') THEN
               CASE (sseg) IS
                    WHEN "01" => 
						  Mar := CS;
						  WHEN "10" => 
						  Mar := DS;
                    WHEN "11" => 
						  Mar := SS;
                    WHEN OTHERS =>
                         Mar(3 DOWNTO 0) := "0000";
                         Mar(19 DOWNTO 4) := ADR(31 DOWNTO 16);
               END CASE;
					Mar := STD_LOGIC_VECTOR(to_unsigned(to_integer(unsigned(Mar)) + to_integer(unsigned(ADR(15 DOWNTO 0))), Mar'length));    
               MAR := ADR(19 DOWNTO 0);
          END IF;

          IF (Sinternal = '0') THEN
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
          ELSIF (Sinternal = '1') THEN
               IF (Smbr = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => MBRout := CS(19 downto 4);
                         WHEN "10" => MBRout := DS(19 downto 4);
                         WHEN "11" => MBRout := SS(19 downto 4);
                         WHEN OTHERS => NULL;
                    END CASE;
               END IF;
               IF (RDin = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => CS(19 DOWNTO 4) := D;
                         WHEN "10" => DS(19 DOWNTO 4) := D;
                         WHEN "11" => SS(19 DOWNTO 4) := D;
                         WHEN OTHERS => NULL;
                    END CASE;
               END IF;
               IF (WRin = '1') THEN
                    CASE(Sseg) IS
                         WHEN "01" => D <= CS(19 downto 4);
                         WHEN "10" => D <= DS(19 downto 4);
                         WHEN "11" => D <= SS(19 downto 4);
                         WHEN OTHERS => D <= "ZZZZZZZZZZZZZZZZ";
                    END CASE;
               END IF;
          END IF;

          DI <= MBRin;
          AD <= MAR;
          WR <= WRin;
          RD <= RDin;
     END PROCESS;
END rtl;