LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Jednostka_Sterujaca IS
   PORT (
      clk : IN STD_LOGIC;
      IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      -- rozkaz
      reset, C, Z, S, INT : IN STD_LOGIC;
      Salu, Sbb, Sbc, Sba : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
      Sid : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
      Sa, Sseg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      LDF, Smar, Smbr, WR, RD, INTA, MIO, Sinternal : OUT STD_LOGIC
   );
END ENTITY;

ARCHITECTURE rtl OF Jednostka_Sterujaca IS
   TYPE state_type IS (mFetch, mDecode, mReset, -- fetch, interpretacja
      mInt, -- przerwanie
      mWait, -- wait
      mCall0, mCall1, mCall2, mCall3, -- call
      mRet0, mRet1, mRet2, -- ret
      mPush, mPop0, mPop1, mNeg, mInc, mDec, mNot, mShr, mShl, -- proste opreacje na rejestrach
      mMoveR, mMoveRM, mAddR, mSubR, mCmpR, mAndR, mOrR, mXorR, mInR, mOutR, -- operacje na rejestrach
      mSJump0, mSJump1, -- short jumps
      mLJump0, mLJump1, mLJump2, mLJump3, -- long jumps
      mFetch16, mMove16, mMoveHighAd, mAdd16, mSub16, mCmp16, mAnd16, mOr16, mXor16, -- argument st16
      mFetch32_1, -- niewiadoma
      mFetch32_2, Move32, mRAdd, mAdd32, mSub32, mCmp32, mAnd32, mOr32, mXor32, mIn32, mOut32, -- argument add32
      mMovSeg, -- get data onto D line 
      mMovSegCs, mMovSegDs, mMovSegSs, -- mov info seg
      mPshSeg, -- get data onto D line
      mPshSegCs, mPshSegDs, mPshSegSs, -- psh to stack
      mPopSeg, -- Decrement SP
      mPopCs, mPopDs, mPopSs); -- pop from stack
   SIGNAL state : state_type;
BEGIN
   PROCESS (clk, reset)
   BEGIN
      IF reset = '1' THEN
         state <= mReset;
      ELSIF (clk'EVENT AND clk = '1') THEN
         CASE state IS
            WHEN mFetch =>
               state <= mDecode;
            WHEN mReset =>
               state <= mFetch;
            WHEN mDecode =>
               CASE IR(15 DOWNTO 13) IS
                  WHEN "000" =>
                     CASE IR(12 DOWNTO 11) IS
                        WHEN "00" =>
                           IF INT = '1' THEN
                              state <= mInt;
                           ELSE
                              state <= mFetch;
                           END IF;
                        WHEN "01" => state <= mWait;
                        WHEN "10" => state <= mCall0;
                        WHEN "11" => state <= mRet0;
                     END CASE;
                  WHEN "001" =>
                     CASE IR(12 DOWNTO 8) IS
                        WHEN "00000" => state <= mPush;
                        WHEN "00001" => state <= mPop0;
                        WHEN "00010" => state <= mNeg;
                        WHEN "00011" => state <= mInc;
                        WHEN "00100" => state <= mDec;
                        WHEN "00101" => state <= mNot;
                        WHEN "00110" => state <= mShr;
                        WHEN "00111" => state <= mShl;
                        WHEN "01000" => state <= mMoveR;
                        WHEN "01001" => state <= mMoveRM;
                        WHEN "01010" => state <= mAddR;
                        WHEN "01011" => state <= mSubR;
                        WHEN "01100" => state <= mCmpR;
                        WHEN "01101" => state <= mAndR;
                        WHEN "01110" => state <= mOrR;
                        WHEN "01111" => state <= mXorR;
                        WHEN "10000" => state <= mInR;
                        WHEN "10001" => state <= mOutR;
                        WHEN OTHERS =>
                           IF INT = '1' THEN
                              state <= mInt;
                           ELSE
                              state <= mFetch;
                           END IF;
                     END CASE;
                  WHEN "010" => state <= mSJump0;
                  WHEN "011" => state <= mLJump0;
                  WHEN "100" => state <= mFetch16;
                  WHEN "101" => state <= mFetch32_1;
                     -- Instructions working on segment registers
                  WHEN "110" =>
                     -- Which op (mov / pop / push)
                     CASE IR(12 DOWNTO 11) IS
                        WHEN "00" => state <= mMovSeg;
                        WHEN "01" => state <= mPopSeg;
                        WHEN "10" => state <= mPshSeg;
                        WHEN OTHERS =>
                           IF INT = '1' THEN
                              state <= mInt;
                           ELSE
                              state <= mFetch;
                           END IF;
                     END CASE;
                  WHEN OTHERS =>
                     IF INT = '1' THEN
                        state <= mInt;
                     ELSE
                        state <= mFetch;
                     END IF;
               END CASE;
               -- Wait
            WHEN mWait =>
               IF INT = '1' THEN
                  state <= mInt;
               ELSE
                  state <= mWait;
               END IF;
               -- Call
            WHEN mCall0 => state <= mCall1;
            WHEN mCall1 => state <= mCall2;
            WHEN mCall2 => state <= mCall3;
               -- Ret
            WHEN mRet0 => state <= mRet1;
            WHEN mRet1 => state <= mRet2;
               -- short jump
            WHEN mSJump0 =>
               -- zwykły skok
               IF (IR(12 DOWNTO 11) = "00") THEN
                  state <= mSJump1;
                  -- skok jeśli carry
               ELSIF (IR(12 DOWNTO 11) = "01" AND (C = '1')) THEN
                  state <= mSJump1;
                  -- skok jeśli zero
               ELSIF (IR(12 DOWNTO 11) = "10" AND (Z = '1')) THEN
                  state <= mSJump1;
                  -- skok jeśli signed
               ELSIF (IR(12 DOWNTO 11) = "11" AND (S = '1')) THEN
                  state <= mSJump1;
               ELSIF (INT = '1') THEN
                  state <= mInt;
               ELSE
                  state <= mFetch;
               END IF;
               -- long jump
            WHEN mLJump0 =>
               state <= mLJump1;
            WHEN mLJump1 =>
               state <= mLJump2;
            WHEN mLJump2 =>
               state <= mLJump3;
            WHEN mPop0 =>
               state <= mPop1;
               -- argument ze stałą
            WHEN mFetch16 =>
               CASE (IR(12 DOWNTO 10)) IS
                  WHEN "000" => state <= mMove16;
                  WHEN "001" => state <= mMoveHighAd;
                  WHEN "010" => state <= mAdd16;
                  WHEN "011" => state <= mSub16;
                  WHEN "100" => state <= mCmp16;
                  WHEN "101" => state <= mAnd16;
                  WHEN "110" => state <= mOr16;
                  WHEN "111" => state <= mXor16;
               END CASE;
               -- argument z adresem
            WHEN mFetch32_1 =>
               state <= mFetch32_2;
            WHEN mFetch32_2 =>
               CASE (IR(12 DOWNTO 9)) IS
                  WHEN "0000" => state <= Move32;
                  WHEN "0001" => state <= mRAdd;
                  WHEN "0010" => state <= mAdd32;
                  WHEN "0011" => state <= mSub32;
                  WHEN "0100" => state <= mCmp32;
                  WHEN "0101" => state <= mAnd32;
                  WHEN "0110" => state <= mOr32;
                  WHEN "0111" => state <= mXor32;
                  WHEN "1000" => state <= mIn32;
                  WHEN "1001" => state <= mOut32;
                  WHEN OTHERS => state <= mFetch;
               END CASE;
            WHEN mMovSeg =>
               CASE (IR(10 DOWNTO 9)) IS
                  WHEN "00" => state <= mFetch;
                  WHEN "01" => state <= mMovSegCs;
                  WHEN "10" => state <= mMovSegDs;
                  WHEN "11" => state <= mMovSegSs;
               END CASE;
            WHEN mPopSeg =>
               CASE (IR(10 DOWNTO 9)) IS
                  WHEN "00" => state <= mFetch;
                  WHEN "01" => state <= mPopCs;
                  WHEN "10" => state <= mPopDs;
                  WHEN "11" => state <= mPopSs;
               END CASE;
            WHEN mPshSeg =>
               CASE (IR(10 DOWNTO 9)) IS
                  WHEN "00" => state <= mFetch;
                  WHEN "01" => state <= mPshSegCs;
                  WHEN "10" => state <= mPshSegDs;
                  WHEN "11" => state <= mPshSegSs;
               END CASE;
            WHEN OTHERS =>
               IF (INT = '1') THEN
                  state <= mInt;
               ELSE
                  state <= mFetch;
               END IF;
         END CASE;
      END IF;
   END PROCESS;

   PROCESS (state)
   BEGIN
      CASE state IS
            -- Fetch
         WHEN mFetch =>
            Sa <= "01";
            Sid <= "001";
            Sba <= "00000";
            Sbb <= "00000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Dekodowanie 
         WHEN mDecode =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mReset =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00000";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';

            -- Wait
         WHEN mWait =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Call
         WHEN mCall0 =>
            -- zapis stosu do mbr
            Sa <= "10";
            Sba <= "00001";
            Sbb <= "01100";
            Sbc <= "00000";
            -- zwiększenie stosu
            Sid <= "011";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mCall1 =>
            -- zapis stosu do mbr
            Sa <= "10";
            Sba <= "00001";
            Sbb <= "01101";
            Sbc <= "00000";
            -- zwiększenie stosu
            Sid <= "011";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mCall2 =>
            -- zapis adr do stosu
            Sa <= "00";
            Sba <= "01100";
            Sbb <= "01010";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mCall3 =>
            -- zapis adr do stosu
            Sa <= "00";
            Sba <= "01101";
            Sbb <= "01011";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Ret
         WHEN mRet0 =>
            -- przygotowanie wskaźnika stosu
            Sa <= "00";
            Sba <= "00001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "010";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mRet1 =>
            -- przypisanie do pc high
            Sa <= "10";
            Sba <= "01101";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "010";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mRet2 =>
            -- przypisanie do pc high
            Sa <= "10";
            Sba <= "01100";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Push
         WHEN mPush =>
            -- wpisanie wartości do stosu
            Sa <= "10";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "011";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Pop
         WHEN mPop0 =>
            -- zmniejszenie wskaźnika stosu
            Sa <= "00";
            Sba <= "00001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "010";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mPop1 =>
            -- usuniecie ze stosu
            Sa <= "10";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Neg
         WHEN mNeg =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "01001";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Inc
         WHEN mInc =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "01101";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '1';
            INTA <= '0';
            -- Dec
         WHEN mDec =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "10011";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Not
         WHEN mNot =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "01000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Shr
         WHEN mShr =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "01111";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Shl
         WHEN mShl =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "01110";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Mov R, RM
         WHEN mMoveR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "10";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Mov RM, R
         WHEN mMoveRM =>
            Sa <= "00";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "10";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Add, R, RM
         WHEN mAddR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00010";
            Sseg <= "10";
            Sinternal <= '0';
            LDF <= '1';
            INTA <= '0';
            -- Sub, R, RM
         WHEN mSubR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00011";
            Sseg <= "10";
            Sinternal <= '0';
            LDF <= '1';
            INTA <= '0';
            -- Cmp, R, RM
         WHEN mCmpR =>
            Sa <= "00";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "10";
            Sinternal <= '0';
            Salu <= "00011";
            LDF <= '1';
            INTA <= '0';
            -- And, R, RM
         WHEN mAndR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "10";
            Sinternal <= '0';
            Salu <= "00101";
            LDF <= '1';
            INTA <= '0';
            -- Or, R, RM
         WHEN mOrR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "10";
            Sinternal <= '0';
            Salu <= "00100";
            LDF <= '1';
            INTA <= '0';
            -- Xor, R, RM
         WHEN mXorR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "10";
            Sinternal <= '0';
            Salu <= "00110";
            LDF <= '1';
            INTA <= '0';
            -- IN R, IO(AD)
         WHEN mInR =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '0';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- OUT IO(AD), R
         WHEN mOutR =>
            Sa <= "00";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '0';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Jump
         WHEN mSJump0 =>
            Sa <= "01";
            Sba <= "00001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- krótki skok wykonanie skoku - dodanie tmp do pcl
         WHEN mSJump1 =>
            -- cokolwiek
            Sa <= "00";
            -- zapis do pc low
            Sba <= "01100";
            -- odczyt z pc low
            Sbb <= "01100";
            -- odczyt z tmp
            Sbc <= "00001";
            Sid <= "000";
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            MIO <= '1';
            -- dodanie bb i bc
            Salu <= "00010";
            Sseg <= "01";
            Sinternal <= '0';
            LDF <= '1';
            INTA <= '0';
            -- Long jump
         WHEN mLJump0 =>
            Sa <= "01";
            Sba <= "10000";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "001";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mLJump1 =>
            Sa <= "01";
            Sba <= "10001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mLJump2 =>
            Sa <= "00";
            Sba <= "01100";
            Sbb <= "10000";
            Sbc <= "00000";
            Sid <= "000";
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mLJump3 =>
            Sa <= "00";
            Sba <= "01101";
            Sbb <= "10001";
            Sbc <= "00000";
            Sid <= "000";
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- sczytanie danej
         WHEN mFetch16 =>
            Sa <= "01";
            Sba <= "00001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "001";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Mov R, Temp
         WHEN mMove16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "00001";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Mov R, ad16(ad) -> górne ad do rejestru R
         WHEN mMoveHighAd =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "01011";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
            -- Add, R, Temp
         WHEN mAdd16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00010";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '1';
            INTA <= '0';
            -- Sub, R, Temp
         WHEN mSub16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00011";
            LDF <= '1';
            INTA <= '0';
            -- Cmp, R, Temp
         WHEN mCmp16 =>
            Sa <= "00";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00011";
            LDF <= '1';
            INTA <= '0';
            -- And, R, Temp
         WHEN mAnd16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00101";
            LDF <= '0';
            INTA <= '0';
            -- Or, R, Temp
         WHEN mOr16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00100";
            LDF <= '0';
            INTA <= '0';
            -- Xor, R, Temp
         WHEN mXor16 =>
            Sa <= "00";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00001";
            Sid <= "000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00110";
            LDF <= '1';
            INTA <= '0';
            -- sczytanie danych
         WHEN mFetch32_1 =>
            Sa <= "01";
            Sba <= "10001";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "001";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Sseg <= "01";
            Sinternal <= '0';
            Salu <= "00000";
            LDF <= '0';
            INTA <= '0';
         WHEN mFetch32_2 =>
            Sa <= "01";
            Sba <= "10000";
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "001";
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            MIO <= '1';
            Sseg <= "01";
            Sinternal <= '0';
            Salu <= "00000";
            LDF <= '0';
            INTA <= '0';
            -- Mov R, Addr
         WHEN Move32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= "00000";
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00000";
            LDF <= '0';
            INTA <= '0';
            -- Mov Addr, R
         WHEN mRAdd =>
            Sa <= "11";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '1';
            WR <= '1';
            RD <= '0';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00000";
            LDF <= '0';
            INTA <= '0';
            -- Add, R, TempAdd
         WHEN mAdd32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00010";
            LDF <= '1';
            INTA <= '0';
            -- Sub, R, TempAdd
         WHEN mSub32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00011";
            LDF <= '1';
            INTA <= '0';
            -- Cmp, R, TempAdd
         WHEN mCmp32 =>
            Sa <= "11";
            Sba <= "00001";
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00011";
            LDF <= '1';
            INTA <= '0';
            -- And, R, TempAdd
         WHEN mAnd32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00101";
            LDF <= '0';
            INTA <= '0';
            -- Or, R, TempAdd
         WHEN mOr32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00100";
            LDF <= '0';
            INTA <= '0';
            -- Xor, R, TempAdd
         WHEN mXor32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00110";
            LDF <= '1';
            INTA <= '0';
            -- IN ADD, IO(AD)???
         WHEN mIn32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00110";
            LDF <= '1';
            INTA <= '0';
            -- Out IO(R)???
         WHEN mOut32 =>
            Sa <= "11";
            Sba <= IR(4 DOWNTO 0);
            Sbb <= IR(4 DOWNTO 0);
            Sbc <= "00000";
            Sid <= "000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Sseg <= "00";
            Sinternal <= '0';
            Salu <= "00110";
            LDF <= '1';
            INTA <= '0';

         WHEN mMovSeg =>
            Sa <= "01";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "001";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mMovSegCs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mMovSegDs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "10";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mMovSegSs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPshSeg =>
            Sa <= "10";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "001";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mPshSegCs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "011";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPshSegDs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "011";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "10";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPshSegSs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "011";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '1';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPopSeg =>
            Sa <= "10";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "010";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '1';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
         WHEN mPopCs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "001";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "01";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPopDs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "001";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "10";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';
         WHEN mPopSs =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "001";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '1';
            Salu <= "00000";
            Sseg <= "11";
            Sinternal <= '1';
            LDF <= '0';
            INTA <= '0';

         WHEN OTHERS =>
            Sa <= "00";
            Sbb <= "00000";
            Sba <= "00001";
            Sid <= "000";
            Sbc <= "00000";
            MIO <= '1';
            Smar <= '0';
            Smbr <= '0';
            WR <= '0';
            RD <= '0';
            Salu <= "00000";
            Sseg <= "00";
            Sinternal <= '0';
            LDF <= '0';
            INTA <= '0';
      END CASE;
   END PROCESS;
END rtl;