
library ary, clib, clibp, ibm, ieee, latches,  stdcell, support;
 use ibm.std_ulogic_function_support.all;
 use ibm.std_ulogic_support.all;
 use ibm.synthesis_support.all;
 --use ibm.texsim.all;
 use ibm.texsim_attributes.all;
 use ieee.numeric_std.all;
 use ieee.std_logic_1164.all;
 use support.logic_support_pkg.all;
 use support.power_logic_pkg.all;

-- MAKEREGS IO DECLARATIONS START
entity ifdix_ibuff_index_leaf is
port (
    vdd                 : inout power_logic
    ; gnd                 : inout power_logic
    ; nclk                : in std_ulogic

    ; a                   : in std_ulogic
    ; b                   : in std_ulogic

    ; c                   : out std_ulogic
    ; d                   : out std_ulogic
    ; e                   : out std_ulogic
    ; f                   : out std_ulogic
    );
end vhdlsample;
-- MAKEREGS IO DECLARATIONS END
-- MAKEREGS IO DECLARATIONS END

architecture vhdlsample of vhdlsample is

-- MAKEREGS SIGNAL DECLARATIONS START
-----------------------------------------------------------
-- Input and output signal declarations (including       --
-- scan signals) auto-generated by MAKEREGS version 204 --
-----------------------------------------------------------

-- Register signal declarations
  SIGNAL gptr_scan_in_int : std_ulogic;
  SIGNAL gptr_scan_out_int : std_ulogic;
  SIGNAL gptr_scan_in, gptr_scan_out : std_ulogic_vector(0 to 0);

--  Enhancement to VS to help detect unused latch input/outputs
-- %VS_PORT_MAP c_nlat_scan.q out
-- %VS_PORT_MAP c_nlat_scan.qL1 out
-- %VS_PORT_MAP c_nlat_scan.data in
-- %VS_PORT_MAP c_nlat_scan.q out
-- %VS_PORT_MAP c_nlat_scan.qL1 out
-- %VS_PORT_MAP c_nlat_scan.data in
---------------------------------------------------------------
-- End auto-generated register and scan signal declarations  --
---------------------------------------------------------------
-- MAKEREGS SIGNAL DECLARATIONS END
begin

   --!! Bugspray FSM: l3rdfsm_rdnsm, -clock;
   --!! state_vector      := (rndsm_hi, rdnsm_lo(0 to 3));
   --!! states            := ( s000,s001,s002,s004,s008,s010);
   --!! state_encoding := ( s000:='00000', s001:='00001', s002:='00010',
   --!!                     s004:='00100', s008:='01000', s010:='10000' );
   --!! arcs := ( s000=>s001, s001=>s001, s001=>s002, s002=>s004, s004=>s001,
   --!!           s004=>s002, s004=>s008, s008=>s001, s008=>s008, s008=>s010,
   --!!           s010=>s001, s010=>s010 );
   --!! %define test whee
   --!!%define VT      x \
   --!!                y \
   --!!                z \
   --!!                a
   --!! end FSM;
   aaaaa
 --## SWITCH ibuffer_parity_err_mask( id3_ibuffer_parityq_qe.mask_lt(0)) = off;
 --## ibuffer_parity_err_mask.comment = "Disables IBuffer pre-decode parity error checker";
 --## ibuffer_parity_err_mask.attr(DIALTYPE) = "mask";
 --## ibuffer_parity_err_mask.attr(Priority) = "3";
 --## ibuffer_parity_err_mask.attr(LATENCY) = "3";
 --## ibuffer_parity_err_mask.attr(INJECT_NET) = "IFU.D.IFDICX.ifdix0.id2_ifdaf_parity_rd0_error";
 --## ibuffer_parity_err_mask.attr(INJECT_VALUE) = "1";
 --## ibuffer_parity_err_mask.attr(ACTION) = "NONE";
   --## %define VT      x \
   --##                y \
   --##                z \
   --##                a

--Should not be highlighted!
%define test aroo

c <= a or b;
b <= a + "000"

--MR_LOOP G 0 1
----## ibuffer_parity_err_mask.attr(INJECT_NET) = "IFU.D.IFDICX.ifdix0.id2_ifdaf_parity_rd0_error";
----!! %define test whee
--Test #G#
-- MR_LOOP END
------------------------------ MAKEREGS LOOP START ------------------------------

--## ibuffer_parity_err_mask.attr(INJECT_NET) = "IFU.D.IFDICX.ifdix0.id2_ifdaf_parity_rd0_error";
--!! %define test whee
Test 0
Test 1

------------------------------ MAKEREGS LOOP END ------------------------------
--MR_LOOP E 0 1
--Test #E#
-- MR_LOOP END
------------------------------ MAKEREGS LOOP START ------------------------------

Test 0
Test 1

------------------------------ MAKEREGS LOOP END ------------------------------
--MR_LOOP ECHO 0 1
----Comment
--Test #ECHO#
--b <= q or d
-- MR_LOOP END
------------------------------ MAKEREGS LOOP START ------------------------------

--Comment
Test 0
--Comment
Test 1

------------------------------ MAKEREGS LOOP END ------------------------------

d <= a and b;
%dowhat(now)
#ok#
%for(yep)


--MR_EXPAND
--
----Comment
----Comment
----## ibuffer_parity_err_mask.attr(INJECT_NET) = "IFU.D.IFDICX.ifdix0.id2_ifdaf_parity_rd0_error";
----!! %define test whee
--
--a <= b or c;
--gate(b,c);
--
--%function pct(a, b)
--   (100 * %a / %b)
--   %end
--   %define total 7
--   %define num 2
--   print .Job is . %pct(num, total) .% complete.;
--   print .Job is . %pct(num + 1, total) .% complete.;
--   
--
--%define foo xxx
--
--foo
--%foo
--% foo
--%%foo
--%% foo
--%%%foo
--%%% foo
--
--bar
--%bar
--% bar
--%%bar
--%% bar
--%%%bar
--%%% bar
--
--%define Foo this is foo
--
--%define VT      x \
--                y \
--                z \
--                a
--                
--%VT
--
--%for (i=0; i<3; ++i)
--  print "this is %i";
--%end
--print "Finally, this is %i";
--
--%for(i = 0; i < 2; ++i)
--  %for( j= 0 ; j< 2; ++j)
--    foo(%i, %j)
--  %end
--%end
--
--%foreach n (1, 2, 3)
--  print "This is %n.";
--%end
--
--%foreach n (i, i, i)
--  print "This is %(++i).";
--%end
--
--%define i 0
--
--%foreach n (i, i, i)
--  print "This is %(++i).";
--%end
--
--%function bar(x)
--  yo %x
--%end
--
--%bar(1)
--%bar(1+2)
--%bar("1+2")
--
--%define x "foo"
--%define y "bar"
--%define a 2
--%define b 3
--%function foo2(x, y)
--  blah(%x + 1, %y + 1)
--  %foreach z (x, y)
--    %bar2(%z)
--  %end
--%end
----invalid function format
--%function bar3 (x)
--
--%foo2(a, b)
--
--%define bar line
--%foo 5
--%bar 6
--%include foo.txt
--%foo 7
--%bar 8
--
--%define x 7
--%if (x > 0)
--  foo(%x)
--%end
--%if (x < 4)
--  bar(%x)
--%end
--    
--%define x 7
--%ifdef x
--  foo(%x)
--%end
--%ifdef y
--  bar(%y)
--%end
--    
--%define x 7
--%ifndef x
--  foo(%x)
--%end
--%ifndef y
--  bar(%y)
--%end
--    
--%define x 7
--%ifndef x
--  foo(%x)
--%else
--  bar(%x)
--%end
--    
--%define info 0
--%define warn 10
--%define err 20
--%define cata 30
--%define pre This is a
--%message(0,"Hello, world!")
--%message ( 0 , "Hello!" , "World!" )
--%message (info, pre . "n informational message:", "INFO!!")
--%message (warn, pre . " warning message:", "WARNING!!")
--%message (err, pre . "n error message:", "ERROR!!")
--%message (cata, pre . . fatal message:., .FATAL!!.)
--
--%define x 7
--%undef x
--%ifdef x
--  foo(%x)
--%else
--  bar(%x)
--%end
--    
--%while (i < 3)
--  foo(%(i++))
--%end
--  
--%define a 11
--This is %(a)
--This is %(a)\x
--This is %(a)\B
--The mask is 00%(a)\nb\00
--
--%define a 000
--This is %(a)
--This is %(a)\d
--This is %(.0b1. . a)\d
--
--%define a 20
--This is %(a+(a-2*(3+5))a)\8
--This is %(a+(a-2)aaa(bbbb)a)\8
--This is %(a+(b)+(c)+(d))\b8
--This is %(a << 32)\16xn
--
--b <= q;
--
--%(i = 1)\q
--%while (i < 3)
--  print .This is something.
--  %(++i)\q
--%end
--    
--
--b <= q;
--
--%(test < test += "moretest" + 0b111 + 0x1234abgf ++ abcd 0%22%(34/45) )
--
--
--b <= q+h;
--
--x%(y)
--(x%(y))
--((x%(y)))
--
--
--b <= q;
--
--act_rd_t%(T)    <= ((id0_t%(T) or id1_t%(T)) and           -- Possible shift/rewind
--
--b <= q;
--
--%(T)    <= ((id0_t%(T) or id1_t%(T)) and           -- Possible shift/rewind
--
--b <= q;
--
--act_rd_t%(T)  aa       <= ((id0_t%(T) or id1_t%(T)) and           -- Possible shift/rewind
--                         not internal_group%(T/4)_hold_dspl) or
--                        smt_mode_switch or                      -- Changing SMT Modes, re-initialize the latches
--  
--%define GRP %(T/4)
--%define tRangeStart %((T%4)==0?' 0':'')%((T%4)==2?' 4':'')%((T%4==1)?' 8':'')%((T%4)==3?'12':'')
--%define tRangeEnd   %((T%4)==0?'15':'')%((T%4)==2?' 7':'')%((T%4==1)?'15':'')%((T%4)==3?'15':'')
--%define tRange      %tRangeStart to %tRangeEnd
--   
--act_rd_t%(T)  aa       <= ((id0_t%(T) or id1_t%(T)) and           -- Possible shift/rewind
--                         not internal_group%(T/4)_hold_dspl) or
--                        smt_mode_switch or                      -- Changing SMT Modes, re-initialize the latches
--  
--   %(T%4==0?'gate(wrt_next_seed_t%(T)(%(i) to %(i+1)) & ':T%4==1?'gate(wrt_next_seed_t%(T)(%(i)) & ':'')  --)) --Fix for highlighting
--   
--    popcount(%(I<=0?"'0'":"(bs_grp%(G)_i0_val and bs_grp%(G)_i0_split2)") & a %(bbbb) aaaa <= gate(qqqq)
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--
--MR_EXPAND END
----------------------- EXPAND START --------------------------

--Comment
--Comment


foo
xxx
% foo
%foo
%% foo
%%foo
%%% foo

bar
%bar
% bar
%%bar
%% bar
%%%bar
%%% bar


                
x                 y                 z

  print "this is 0";
  print "this is 1";
  print "this is 2";
print "Finally, this is 3";

      foo(0, 0)
    foo(0, 1)
      foo(1, 0)
    foo(1, 1)




------------------------ EXPAND END ---------------------------

test

--MR_EXPAND
--%for(i=0;i<3;i++)
--test %(i)
--%end
--MR_EXPAND END

---------------------------------------------------------------
-- Plat staging latch declarations auto-generated by MAKEREGS v 204 --
---------------------------------------------------------------

  --  Plat staging has been disabled by user or is off by default.


-- MAKEREGS PLAT STAGING LATCH DECLARATIONS END


-- MAKEREGS PLAT STAGING LATCH DECLARATIONS START
---------------------------------------------------------------
-- Plat staging latch declarations auto-generated by MAKEREGS v 204 --
---------------------------------------------------------------

  --  Plat staging has been disabled by user or is off by default.

-- MAKEREGS PLAT STAGING LATCH DECLARATIONS END


-- MAKEREGS REGISTER INSTANTIATIONS START
---------------------------------------------------------------
-- Register instantiations auto-generated by MAKEREGS v 204 --
---------------------------------------------------------------
-- No latches found in this VHDL!
-- MAKEREGS REGISTER INSTANTIATIONS END
end vhdlsample;
