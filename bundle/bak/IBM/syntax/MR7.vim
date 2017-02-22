" MR7 syntax file
" Language:		 MR7
" Maintainer:  James Tingen <jtingen@us.ibm.com>

" MR7 Comments  {{{1
syn match Comment     /--/ contained containedin=MR7Comments
syn match MR7Comments /--\s*MR_\w\+/ 

" MR7 Keywords  {{{2
syn match MR7Keyword  /MR_\w\+/ contained containedin=MR7Comments

" MR_PARAM  {{{2
syn match MR7Keyword  /MR_PARAMS/ skipwhite contained containedin=MR7Params
syn match MR7Params   /MR_PARAMS.*/ skipwhite contained containedin=MR7Comments
"  Attributes  {{{3
syn match MR7Attr     /-altf/               contained containedin=MR7Params
syn match MR7Attr     /-bs/                 contained containedin=MR7Params
syn match MR7Attr     /-clk/                contained containedin=MR7Params
syn match MR7Attr     /-clkgatedomain/      contained containedin=MR7Params
syn match MR7Attr     /-debug/              contained containedin=MR7Params
syn match MR7Attr     /-dec/                contained containedin=MR7Params
syn match MR7Attr     /-dontrun/            contained containedin=MR7Params
syn match MR7Attr     /-errhelp/            contained containedin=MR7Params
syn match MR7Attr     /-err_rpt_keeper/     contained containedin=MR7Params
syn match MR7Attr     /-flush/              contained containedin=MR7Params
syn match MR7Attr     /-gd/                 contained containedin=MR7Params
syn match MR7Attr     /-keep_dom/           contained containedin=MR7Params
syn match MR7Attr     /-latchhelp/          contained containedin=MR7Params
syn match MR7Attr     /-lcb2/               contained containedin=MR7Params
syn match MR7Attr     /-lcbcntl/            contained containedin=MR7Params
syn match MR7Attr     /-lcbpre/             contained containedin=MR7Params
syn match MR7Attr     /-lcborpre/           contained containedin=MR7Params
syn match MR7Attr     /-nest_clkg/          contained containedin=MR7Params
syn match MR7Attr     /-no_mod_attr/        contained containedin=MR7Params
syn match MR7Attr     /-no_no_addr/         contained containedin=MR7Params
syn match MR7Attr     /-noasyncfence/       contained containedin=MR7Params
syn match MR7Attr     /-noattrib/           contained containedin=MR7Params
syn match MR7Attr     /-nolcbs/             contained containedin=MR7Params
syn match MR7Attr     /-nosynclone/         contained containedin=MR7Params
syn match MR7Attr     /-nowrite/            contained containedin=MR7Params
syn match MR7Attr     /-parse_subs/         contained containedin=MR7Params
syn match MR7Attr     /-pg/                 contained containedin=MR7Params
syn match MR7Attr     /-scan_ctrl/          contained containedin=MR7Params
syn match MR7Attr     /-scan_ios/           contained containedin=MR7Params
syn match MR7Attr     /-slatfunc/           contained containedin=MR7Params
syn match MR7Attr     /-slowclock/          contained containedin=MR7Params
syn match MR7Attr     /-srmode/             contained containedin=MR7Params
syn match MR7Attr     /-no_elat_ro/         contained containedin=MR7Params
syn match MR7Attr     /-nolatch/            contained containedin=MR7Params
syn match MR7Attr     /-nodiag_en/          contained containedin=MR7Params
syn match MR7Attr     /-noscan_dis/         contained containedin=MR7Params
syn match MR7Attr     /-outDir/             contained containedin=MR7Params
syn match MR7Attr     /-ri/                 contained containedin=MR7Params
syn match MR7Attr     /-sn/                 contained containedin=MR7Params
syn match MR7Attr     /-sip/                contained containedin=MR7Params
syn match MR7Attr     /-sop/                contained containedin=MR7Params
syn match MR7Attr     /-msip/               contained containedin=MR7Params
syn match MR7Attr     /-msop/               contained containedin=MR7Params
syn match MR7Attr     /-m2sip/              contained containedin=MR7Params
syn match MR7Attr     /-m2sop/              contained containedin=MR7Params
syn match MR7Attr     /-sde/                contained containedin=MR7Params
syn match MR7Attr     /-scan_dis/           contained containedin=MR7Params
syn match MR7Attr     /-silent/             contained containedin=MR7Params
syn match MR7Attr     /-sort/               contained containedin=MR7Params
syn match MR7Attr     /-vd/                 contained containedin=MR7Params
syn match MR7Attr     /-vgnd/               contained containedin=MR7Params
syn match MR7Attr     /-xn/                 contained containedin=MR7Params

" MR_WARN  {{{2
syn match MR7String   /.*/ contained  containedin=MR7Warning
syn match MR7Keyword  /MR_WARN/ skipwhite contained containedin=MR7Warning nextgroup=MR7String
syn match MR7Warning  /MR_WARN.*/ skipwhite contained containedin=MR7Comments


" MS7 Comments  {{{1
syn match MS7Keyword  /MS_\w\+/ contained containedin=MS7Comments
syn match Comment     /--/ contained containedin=MS7Comments
syn match MS7Comments /--\s*MS_\w\+/

syn match MS7Keyword  /MSR:/ contained containedin=MS7Signals
syn match MS7Keyword  /MSB:/ contained containedin=MS7Signals
syn match MS7Keyword  /MSD:/ contained containedin=MS7Signals
syn match MS7Keyword  /OVR:/ contained containedin=MS7Signals
syn match MS7Keyword  /OVD:/ contained containedin=MS7Signals
syn match Comment     /--/ contained containedin=MS7Signals
syn match MS7Signals  /--\s*MSR:/
syn match MS7Signals  /--\s*MSB:/
syn match MS7Signals  /--\s*MSD:/
syn match MS7Signals  /--\s*OVR:/
syn match MS7Signals  /--\s*OVD:/

" MR_LOOP  {{{1
"  Variables {{{2
syn match   MR_LOOP_Variable_Ends "#"                       containedin=MR_LOOP_Variable contained
syn region  MR_LOOP_Variable      start="#" end="#" keepend containedin=MR_LOOP_Region   contained

"  Header {{{2
syn keyword MR_LOOP_Keyword MR_LOOP                                       containedin=MR_LOOP_Header contained
syn match   MR_LOOP_Header_Variable "\w*"                                 containedin=MR_LOOP_Header contained
syn match   MR_LOOP_Header_Range    "\w\+\s\+\w\+\s*$"                    containedin=MR_LOOP_Header contained
syn match   MR_LOOP_Header          "MR_LOOP\s\+\w\+\s\+\w\+\s\+\w\+\s*$" containedin=MR_LOOP_Region contained

"  Footer {{{2
syn keyword MR_LOOP_Keyword MR_LOOP             containedin=MR_LOOP_Footer contained
syn match   MR_LOOP_Footer "MR_LOOP\s\+END\s*$" containedin=MR_LOOP_Region contained

"  Comments {{{2
syn match   MR_LOOP_Comment "--.*" containedin=MR_LOOP_Region contained

"  Region {{{2
syn match   MR_LOOP_Prefix "^--"                                                 containedin=MR_LOOP_Region contained contains=NONE
syn region  MR_LOOP_Region start="\s*--\s*MR_LOOP" end="\s*--\s*MR_LOOP" keepend                                      contains=Bugspray_Inline,Figtree_Inline,Bugspray_Perf_Prefix,vhdlSpecial,vhdlStatement,vhdlCharacter,vhdlString,vhdlVector,vhdlBoolean,vhdlComment,vhdlNumber,vhdlTime,vhdlType,vhdlOperator,vhdlGlobal,vhdlAttribute

"  Generated {{{2
syn region  MR_LOOP_Generated start="------------------------------\sMAKEREGS\sLOOP\sSTART\s------------------------------" end="------------------------------\sMAKEREGS\sLOOP\sEND\s------------------------------"


" Highlighting Settings {{{1
hi def link  MR7String                         String
hi def link  MR7Attr                           Keyword
hi def link  MR7Warning                        PreProc
hi def link  MR7Keyword                        PreProc

hi def link  MS7Keyword                        PreProc

hi def link  MR_LOOP_Variable_Ends             PreProc
hi def link  MR_LOOP_Variable                  Identifier
hi def link  MR_LOOP_Keyword                   Keyword

hi def link  MR_LOOP_Header_Variable           Identifier
hi def link  MR_LOOP_Header_Range              Number

hi def link  MR_LOOP_Comment                   Comment

hi def link  MR_LOOP_Prefix                    PreProc

hi def link  MR_LOOP_Generated                 PreProc
