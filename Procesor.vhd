LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY procesor IS
    PORT (
        clk, reset, INT : IN STD_LOGIC;
		  IRoutt : out std_logic_vector(15 downto 0)
    );
END procesor;

ARCHITECTURE arch OF procesor IS

    COMPONENT ALU IS
        PORT (
            A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            Salu : IN STD_LOGIC_VECTOR (4 DOWNTO 0);
            LDF : IN STD_LOGIC;
            clk : IN STD_LOGIC;
            Y : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            C, Z, S : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT Rejestry IS
        PORT (
            clk, reset : IN STD_LOGIC;
            DI : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            BA : IN STD_LOGIC_VECTOR (15 DOWNTO 0);
            Sbb : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            Sbc : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            Sba : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
            Sid : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
            Sa : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            BB : OUT STD_LOGIC_VECTOR (15 DOWNTO 0);
            BC : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            ADR : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            IRout : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT;

    COMPONENT MMU IS
        PORT (
            clk : IN STD_LOGIC;
            ADR : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            DO : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            Smar, Smbr, WRin, RDin, Sinternal, reset : IN STD_LOGIC;
            Sseg : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
            AD : OUT STD_LOGIC_VECTOR (19 DOWNTO 0);
            D : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            DI : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
            WR, RD : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT Jednostka_Sterujaca IS
        PORT (
            clk : IN STD_LOGIC;
            IR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
            reset, C, Z, S, INT : IN STD_LOGIC;
            Salu, Sbb, Sbc, Sba : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
            Sid : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
            Sa, Sseg : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
            LDF, Smar, Smbr, WR, RD, INTA, MIO, Sinternal : OUT STD_LOGIC
        );
    END COMPONENT;
	 
	 component Ram is 
	 PORT (
		clk : IN STD_LOGIC;
		adr : IN STD_LOGIC_VECTOR(19 DOWNTO 0);
		we, re : IN STD_LOGIC;
		data : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	 end component;

    SIGNAL Salu, Sbb, Sbc, Sba : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL Smar, Smbr, WR, RD : STD_LOGIC;
    SIGNAL Sa, Sseg : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL Sid : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL DI, DOBA : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL IR : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL ADR : STD_LOGIC_VECTOR(31 DOWNTO 0);
	 
    SIGNAL BB, BC : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL LDF, C, Z, S : STD_LOGIC;

    SIGNAL AD : STD_LOGIC_VECTOR(19 DOWNTO 0);
    SIGNAL D : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL RDram, WRram, MIO, INTA, Sinternal : STD_LOGIC;
	 signal IRtemp : std_logic_vector(15 downto 0);
BEGIN

    ar : ALU PORT MAP(
        A => BB,
        B => BC,
        Salu => Salu,
        LDF => LDF,
        clk => clk,
        Y => DOBA,
        C => C,
        Z => Z,
        S => S);
    reg : Rejestry PORT MAP(
        clk => clk,
        reset => reset,
        DI => DI,
        BA => DOBA,
        Sbb => Sbb,
        Sbc => Sbc,
        Sba => Sba,
        Sid => Sid,
        Sa => Sa,
        BB => BB,
        BC => BC,
        ADR => ADR,
        IRout => IR);
    mem : MMU PORT MAP(
        clk => clk,
        ADR => ADR,
        DO => DOBA,
        Smar => Smar,
        Smbr => Smbr,
        WRin => WR,
        RDin => RD,
        Sinternal => Sinternal,
        reset => reset,
        Sseg => Sseg,
        AD => AD, -- RAM
        D => D, -- RAM
        DI => DI,
        WR => WRram, RD => RDram);
    js : Jednostka_Sterujaca PORT MAP(
        clk => clk,
        IR => "0000000000000000",
        reset => reset,
        C => C,
        Z => Z,
        S => S,
        INT => INT,
        Salu => Salu,
        Sbb => Sbb,
        Sbc => Sbc,
        Sba => Sba,
        Sid => Sid,
        Sa => Sa,
        Sseg => Sseg,
        LDF => LDF,
        Smar => Smar,
        Smbr => Smbr,
        WR => WR,
        RD => RD,
        INTA => INTA,
        MIO => MIO,
        Sinternal => Sinternal);
	 r : Ram Port map(
	   clk => clk,
		adr => AD,
		we => WRram,
		re => RDram,
		data => D
	 );
	 IRoutt <= IR; 
	 
END arch;