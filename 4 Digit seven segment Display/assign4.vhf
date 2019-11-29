--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____ 
--  /   /\/   / 
-- /___/  \  /    Vendor: Xilinx 
-- \   \   \/     Version : 14.7
--  \   \         Application : sch2hdl
--  /   /         Filename : assign4.vhf
-- /___/   /\     Timestamp : 08/16/2019 18:49:32
-- \   \  /  \ 
--  \___\/\___\ 
--
--Command: /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/unwrapped/sch2hdl -intstyle ise -family spartan6 -flat -suppress -vhdl assign4.vhf -w /home/dual/cs5180411/assign4/assign4.sch
--Design Name: assign4
--Device: spartan6
--Purpose:
--    This vhdl netlist is translated from an ECS schematic. It can be 
--    synthesized and simulated, but it should not be modified. 
--
----- CELL FTC_HXILINX_assign4 -----


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FTC_HXILINX_assign4 is
generic(
    INIT : bit := '0'
    );

  port (
    Q   : out STD_LOGIC := '0';
    C   : in STD_LOGIC;
    CLR : in STD_LOGIC;
    T   : in STD_LOGIC
    );
end FTC_HXILINX_assign4;

architecture Behavioral of FTC_HXILINX_assign4 is
signal q_tmp : std_logic := TO_X01(INIT);
begin

process(C, CLR)
begin
  if (CLR='1') then
    q_tmp <= '0';
  elsif (C'event and C = '1') then
    if(T='1') then
      q_tmp <= not q_tmp;
    end if;
  end if;  
end process;

Q <= q_tmp;

end Behavioral;

----- CELL M4_1E_HXILINX_assign4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity M4_1E_HXILINX_assign4 is
  
port(
    O   : out std_logic;

    D0  : in std_logic;
    D1  : in std_logic;
    D2  : in std_logic;
    D3  : in std_logic;
    E   : in std_logic;
    S0  : in std_logic;
    S1  : in std_logic
  );
end M4_1E_HXILINX_assign4;

architecture M4_1E_HXILINX_assign4_V of M4_1E_HXILINX_assign4 is
begin
  process (D0, D1, D2, D3, E, S0, S1)
  variable sel : std_logic_vector(1 downto 0);
  begin
    sel := S1&S0;
    if( E = '0') then
    O <= '0';
    else
      case sel is
      when "00" => O <= D0;
      when "01" => O <= D1;
      when "10" => O <= D2;
      when "11" => O <= D3;
      when others => NULL;
      end case;
    end if;
    end process; 
end M4_1E_HXILINX_assign4_V;
----- CELL D2_4E_HXILINX_assign4 -----
  
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity D2_4E_HXILINX_assign4 is
  
port(
    D0  : out std_logic;
    D1  : out std_logic;
    D2  : out std_logic;
    D3  : out std_logic;

    A0  : in std_logic;
    A1  : in std_logic;
    E   : in std_logic
  );
end D2_4E_HXILINX_assign4;

architecture D2_4E_HXILINX_assign4_V of D2_4E_HXILINX_assign4 is
  signal d_tmp : std_logic_vector(3 downto 0);
begin
  process (A0, A1, E)
  variable sel   : std_logic_vector(1 downto 0);
  begin
    sel := A1&A0;
    if( E = '0') then
    d_tmp <= "0000";
    else
      case sel is
      when "00" => d_tmp <= "0001";
      when "01" => d_tmp <= "0010";
      when "10" => d_tmp <= "0100";
      when "11" => d_tmp <= "1000";
      when others => NULL;
      end case;
    end if;
  end process; 

    D3 <= d_tmp(3);
    D2 <= d_tmp(2);
    D1 <= d_tmp(1);
    D0 <= d_tmp(0);

end D2_4E_HXILINX_assign4_V;

library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity timingcircuit_MUSER_assign4 is
   port ( CLK : in    std_logic; 
          S0  : out   std_logic; 
          S1  : out   std_logic);
end timingcircuit_MUSER_assign4;

architecture BEHAVIORAL of timingcircuit_MUSER_assign4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal XLXN_100 : std_logic;
   signal XLXN_115 : std_logic;
   signal XLXN_116 : std_logic;
   signal XLXN_117 : std_logic;
   signal XLXN_118 : std_logic;
   signal XLXN_120 : std_logic;
   signal XLXN_121 : std_logic;
   signal XLXN_122 : std_logic;
   signal XLXN_123 : std_logic;
   signal XLXN_126 : std_logic;
   signal XLXN_127 : std_logic;
   signal XLXN_128 : std_logic;
   signal XLXN_129 : std_logic;
   signal XLXN_131 : std_logic;
   signal XLXN_132 : std_logic;
   signal XLXN_134 : std_logic;
   signal XLXN_135 : std_logic;
   signal XLXN_137 : std_logic;
   signal XLXN_138 : std_logic;
   signal XLXN_140 : std_logic;
   signal XLXN_141 : std_logic;
   signal XLXN_144 : std_logic;
   signal XLXN_145 : std_logic;
   signal XLXN_147 : std_logic;
   signal XLXN_148 : std_logic;
   signal XLXN_149 : std_logic;
   signal XLXN_150 : std_logic;
   signal XLXN_152 : std_logic;
   signal XLXN_153 : std_logic;
   signal XLXN_154 : std_logic;
   signal XLXN_156 : std_logic;
   signal S0_DUMMY : std_logic;
   component FTC_HXILINX_assign4
      port ( C   : in    std_logic; 
             CLR : in    std_logic; 
             T   : in    std_logic; 
             Q   : out   std_logic);
   end component;
   
   component AND2
      port ( I0 : in    std_logic; 
             I1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   attribute BOX_TYPE of AND2 : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_65 : label is "XLXI_65_0";
   attribute HU_SET of XLXI_66 : label is "XLXI_66_1";
   attribute HU_SET of XLXI_67 : label is "XLXI_67_2";
   attribute HU_SET of XLXI_68 : label is "XLXI_68_3";
   attribute HU_SET of XLXI_69 : label is "XLXI_69_4";
   attribute HU_SET of XLXI_70 : label is "XLXI_70_5";
   attribute HU_SET of XLXI_71 : label is "XLXI_71_6";
   attribute HU_SET of XLXI_72 : label is "XLXI_72_7";
   attribute HU_SET of XLXI_73 : label is "XLXI_73_8";
   attribute HU_SET of XLXI_74 : label is "XLXI_74_9";
   attribute HU_SET of XLXI_75 : label is "XLXI_75_10";
   attribute HU_SET of XLXI_76 : label is "XLXI_76_11";
   attribute HU_SET of XLXI_77 : label is "XLXI_77_12";
   attribute HU_SET of XLXI_78 : label is "XLXI_78_13";
   attribute HU_SET of XLXI_79 : label is "XLXI_79_14";
   attribute HU_SET of XLXI_80 : label is "XLXI_80_15";
begin
   XLXN_100 <= '0';
   XLXN_116 <= '1';
   S0 <= S0_DUMMY;
   XLXI_65 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_116,
                Q=>XLXN_115);
   
   XLXI_66 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_117,
                Q=>XLXN_118);
   
   XLXI_67 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_121,
                Q=>XLXN_120);
   
   XLXI_68 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_122,
                Q=>XLXN_123);
   
   XLXI_69 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_126,
                Q=>XLXN_127);
   
   XLXI_70 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_128,
                Q=>XLXN_129);
   
   XLXI_71 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_131,
                Q=>XLXN_132);
   
   XLXI_72 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_135,
                Q=>XLXN_134);
   
   XLXI_73 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_137,
                Q=>XLXN_138);
   
   XLXI_74 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_140,
                Q=>XLXN_141);
   
   XLXI_75 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_144,
                Q=>XLXN_145);
   
   XLXI_76 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_147,
                Q=>XLXN_148);
   
   XLXI_77 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_149,
                Q=>XLXN_150);
   
   XLXI_78 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_152,
                Q=>XLXN_153);
   
   XLXI_79 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_154,
                Q=>S0_DUMMY);
   
   XLXI_80 : FTC_HXILINX_assign4
      port map (C=>CLK,
                CLR=>XLXN_100,
                T=>XLXN_156,
                Q=>S1);
   
   XLXI_82 : AND2
      port map (I0=>XLXN_115,
                I1=>XLXN_116,
                O=>XLXN_117);
   
   XLXI_83 : AND2
      port map (I0=>XLXN_118,
                I1=>XLXN_117,
                O=>XLXN_121);
   
   XLXI_84 : AND2
      port map (I0=>XLXN_120,
                I1=>XLXN_121,
                O=>XLXN_122);
   
   XLXI_85 : AND2
      port map (I0=>XLXN_123,
                I1=>XLXN_122,
                O=>XLXN_126);
   
   XLXI_86 : AND2
      port map (I0=>XLXN_127,
                I1=>XLXN_126,
                O=>XLXN_128);
   
   XLXI_87 : AND2
      port map (I0=>XLXN_129,
                I1=>XLXN_128,
                O=>XLXN_131);
   
   XLXI_88 : AND2
      port map (I0=>XLXN_132,
                I1=>XLXN_131,
                O=>XLXN_135);
   
   XLXI_89 : AND2
      port map (I0=>XLXN_134,
                I1=>XLXN_135,
                O=>XLXN_137);
   
   XLXI_90 : AND2
      port map (I0=>XLXN_138,
                I1=>XLXN_137,
                O=>XLXN_140);
   
   XLXI_91 : AND2
      port map (I0=>XLXN_141,
                I1=>XLXN_140,
                O=>XLXN_144);
   
   XLXI_92 : AND2
      port map (I0=>XLXN_145,
                I1=>XLXN_144,
                O=>XLXN_147);
   
   XLXI_93 : AND2
      port map (I0=>XLXN_148,
                I1=>XLXN_147,
                O=>XLXN_149);
   
   XLXI_94 : AND2
      port map (I0=>XLXN_150,
                I1=>XLXN_149,
                O=>XLXN_152);
   
   XLXI_95 : AND2
      port map (I0=>XLXN_153,
                I1=>XLXN_152,
                O=>XLXN_154);
   
   XLXI_96 : AND2
      port map (I0=>S0_DUMMY,
                I1=>XLXN_154,
                O=>XLXN_156);
   
end BEHAVIORAL;



library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.ALL;
library UNISIM;
use UNISIM.Vcomponents.ALL;

entity assign4 is
   port ( a0  : in    std_logic; 
          a1  : in    std_logic; 
          a2  : in    std_logic; 
          a3  : in    std_logic; 
          b0  : in    std_logic; 
          b1  : in    std_logic; 
          b2  : in    std_logic; 
          b3  : in    std_logic; 
          CLK : in    std_logic; 
          c0  : in    std_logic; 
          c1  : in    std_logic; 
          c2  : in    std_logic; 
          c3  : in    std_logic; 
          d0  : in    std_logic; 
          d1  : in    std_logic; 
          d2  : in    std_logic; 
          d3  : in    std_logic; 
          A   : out   std_logic; 
          An0 : out   std_logic; 
          An1 : out   std_logic; 
          An2 : out   std_logic; 
          An3 : out   std_logic; 
          B   : out   std_logic; 
          C   : out   std_logic; 
          D   : out   std_logic; 
          E   : out   std_logic; 
          F   : out   std_logic; 
          G   : out   std_logic);
end assign4;

architecture BEHAVIORAL of assign4 is
   attribute HU_SET     : string ;
   attribute BOX_TYPE   : string ;
   signal Anode1  : std_logic;
   signal Anode2  : std_logic;
   signal Anode3  : std_logic;
   signal XLXN_1  : std_logic;
   signal XLXN_2  : std_logic;
   signal XLXN_3  : std_logic;
   signal XLXN_4  : std_logic;
   signal XLXN_29 : std_logic;
   signal XLXN_30 : std_logic;
   signal XLXN_31 : std_logic;
   signal XLXN_32 : std_logic;
   signal XLXN_33 : std_logic;
   signal XLXN_48 : std_logic;
   signal XLXN_52 : std_logic;
   signal XLXN_53 : std_logic;
   component M4_1E_HXILINX_assign4
      port ( D0 : in    std_logic; 
             D1 : in    std_logic; 
             D2 : in    std_logic; 
             D3 : in    std_logic; 
             E  : in    std_logic; 
             S0 : in    std_logic; 
             S1 : in    std_logic; 
             O  : out   std_logic);
   end component;
   
   component symbol3
      port ( b3 : in    std_logic; 
             b2 : in    std_logic; 
             b1 : in    std_logic; 
             b0 : in    std_logic; 
             A  : out   std_logic; 
             B  : out   std_logic; 
             C  : out   std_logic; 
             D  : out   std_logic; 
             E  : out   std_logic; 
             F  : out   std_logic; 
             G  : out   std_logic);
   end component;
   
   component D2_4E_HXILINX_assign4
      port ( A0 : in    std_logic; 
             A1 : in    std_logic; 
             E  : in    std_logic; 
             D0 : out   std_logic; 
             D1 : out   std_logic; 
             D2 : out   std_logic; 
             D3 : out   std_logic);
   end component;
   
   component timingcircuit_MUSER_assign4
      port ( CLK : in    std_logic; 
             S0  : out   std_logic; 
             S1  : out   std_logic);
   end component;
   
   component INV
      port ( I : in    std_logic; 
             O : out   std_logic);
   end component;
   attribute BOX_TYPE of INV : component is "BLACK_BOX";
   
   attribute HU_SET of XLXI_1 : label is "XLXI_1_16";
   attribute HU_SET of XLXI_3 : label is "XLXI_3_17";
   attribute HU_SET of XLXI_4 : label is "XLXI_4_18";
   attribute HU_SET of XLXI_5 : label is "XLXI_5_19";
   attribute HU_SET of XLXI_15 : label is "XLXI_15_20";
begin
   XLXN_1 <= '1';
   XLXN_2 <= '1';
   XLXN_3 <= '1';
   XLXN_4 <= '1';
   XLXN_33 <= '1';
   XLXI_1 : M4_1E_HXILINX_assign4
      port map (D0=>a0,
                D1=>b0,
                D2=>c0,
                D3=>d0,
                E=>XLXN_1,
                S0=>XLXN_52,
                S1=>XLXN_48,
                O=>XLXN_29);
   
   XLXI_3 : M4_1E_HXILINX_assign4
      port map (D0=>a1,
                D1=>b1,
                D2=>c1,
                D3=>d1,
                E=>XLXN_4,
                S0=>XLXN_52,
                S1=>XLXN_48,
                O=>XLXN_30);
   
   XLXI_4 : M4_1E_HXILINX_assign4
      port map (D0=>a2,
                D1=>b2,
                D2=>c2,
                D3=>d2,
                E=>XLXN_2,
                S0=>XLXN_52,
                S1=>XLXN_48,
                O=>XLXN_31);
   
   XLXI_5 : M4_1E_HXILINX_assign4
      port map (D0=>a3,
                D1=>b3,
                D2=>c3,
                D3=>d3,
                E=>XLXN_3,
                S0=>XLXN_52,
                S1=>XLXN_48,
                O=>XLXN_32);
   
   XLXI_13 : symbol3
      port map (b0=>XLXN_29,
                b1=>XLXN_30,
                b2=>XLXN_31,
                b3=>XLXN_32,
                A=>A,
                B=>B,
                C=>C,
                D=>D,
                E=>E,
                F=>F,
                G=>G);
   
   XLXI_15 : D2_4E_HXILINX_assign4
      port map (A0=>XLXN_52,
                A1=>XLXN_48,
                E=>XLXN_33,
                D0=>XLXN_53,
                D1=>Anode1,
                D2=>Anode2,
                D3=>Anode3);
   
   XLXI_18 : timingcircuit_MUSER_assign4
      port map (CLK=>CLK,
                S0=>XLXN_52,
                S1=>XLXN_48);
   
   XLXI_19 : INV
      port map (I=>XLXN_53,
                O=>An0);
   
   XLXI_20 : INV
      port map (I=>Anode1,
                O=>An1);
   
   XLXI_21 : INV
      port map (I=>Anode2,
                O=>An2);
   
   XLXI_22 : INV
      port map (I=>Anode3,
                O=>An3);
   
end BEHAVIORAL;



