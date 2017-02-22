" VHDL Bugspray, Figtree, Preprocessor additions syntax file
" Language:		 VHDL
" Maintainer:  James Tingen <jtingen@us.ibm.com>

let b:vhdlLoaded = 1

syntax include @BS syntax/bil.vim
syntax include @FT syntax/figtree.vim
syntax include @StrmPreProc syntax/StrmPreProc.vim
syntax include @MR7 syntax/MR7.vim

runtime! syntax/svn.vim
runtime! syntax/MR7.vim

" VHDL Keywords  {{{1
syn keyword vhdlStatement abs add_signed add_unsigned and and_2 and_3 and_4 and_5 and_6 and_7 and_8
syn keyword vhdlStatement and_reduce ao_2x1 ao_2x1x1 ao_2x1x1x1 ao_2x2 ao_2x2x1 ao_2x2x1x1 ao_2x2x2
syn keyword vhdlStatement ao_2x2x2x1 ao_2x2x2x2 ao_3x1 ao_3x2 ao_3x3 ao_4x1 ao_4x2 ao_4x3 ao_4x4
syn keyword vhdlStatement aoi_2x1 aoi_2x1x1 aoi_2x1x1x1 aoi_2x2 aoi_2x2x1 aoi_2x2x1x1 aoi_2x2x2
syn keyword vhdlStatement aoi_2x2x2x1 aoi_2x2x2x2 aoi_3x1 aoi_3x2 aoi_3x3 aoi_4x1 aoi_4x2 aoi_4x3 aoi_4x4
syn keyword vhdlStatement bitstring buff
syn keyword vhdlStatement clock_tree_dot compare
syn keyword vhdlStatement decode decode_2to4 decode_3to8 decode_4to16 decode_5to32 decode_6to64
syn keyword vhdlStatement delay divmod dot_and dot_or
syn keyword vhdlStatement eq
syn keyword vhdlStatement falling_edge file_close_in file_close_out file_open_in file_open_out
syn keyword vhdlStatement findfile full_add
syn keyword vhdlStatement gate gate_and gate_ao_2x1 gate_ao_2x1x1 gate_ao_2x1x1x1 gate_ao_2x2 gate_ao_2x2x1
syn keyword vhdlStatement gate_ao_2x2x1x1 gate_ao_2x2x2 gate_ao_2x2x2x1 gate_ao_2x2x2x2 gate_ao_3x1 gate_ao_3x2
syn keyword vhdlStatement gate_ao_3x3 gate_ao_4x1 gate_ao_4x2 gate_ao_4x3 gate_ao_4x4
syn keyword vhdlStatement gate_aoi_2x1 gate_aoi_2x1x1 gate_aoi_2x1x1x1 gate_aoi_2x2 gate_aoi_2x2x1
syn keyword vhdlStatement gate_aoi_2x2x1x1 gate_aoi_2x2x2 gate_aoi_2x2x2x1 gate_aoi_2x2x2x2
syn keyword vhdlStatement gate_aoi_3x1 gate_aoi_3x2 gate_aoi_3x3 gate_aoi_4x1 gate_aoi_4x2 gate_aoi_4x3
syn keyword vhdlStatement gate_aoi_4x4 gate_nand gate_nor gate_oa_2x1 gate_oa_2x1x1 gate_oa_2x1x1x1
syn keyword vhdlStatement gate_oa_2x2 gate_oa_2x2x1 gate_oa_2x2x1x1 gate_oa_2x2x2 gate_oa_2x2x2x1
syn keyword vhdlStatement gate_oa_2x2x2x2 gate_oa_3x1 gate_oa_3x2 gate_oa_3x3 gate_oa_4x1 gate_oa_4x2
syn keyword vhdlStatement gate_oa_4x3 gate_oa_4x4 gate_oai_2x1 gate_oai_2x1x1 gate_oai_2x1x1x1
syn keyword vhdlStatement gate_oai_2x2 gate_oai_2x2x1 gate_oai_2x2x1x1 gate_oai_2x2x2 gate_oai_2x2x2x1
syn keyword vhdlStatement gate_oai_2x2x2x2 gate_oai_3x1 gate_oai_3x2 gate_oai_3x3 gate_oai_4x1 gate_oai_4x2
syn keyword vhdlStatement gate_oai_4x3 gate_oai_4x4 gate_or gate_xnor gate_xor ge get_net gnd gt
syn keyword vhdlStatement hexstring
syn keyword vhdlStatement invert is_parity_even is_parity_odd is_x
syn keyword vhdlStatement le lt
syn keyword vhdlStatement max maximum min mod mux_2to1 mux_4to1 mux_8to1
syn keyword vhdlStatement nand nand_2 nand_3 nand_4 nand_5 nand_6 nand_7 nand_8 nand_reduce ne nor
syn keyword vhdlStatement nor_2 nor_3 nor_4 nor_5 nor_6 nor_7 nor_8 nor_reduce not not_mux_2to1 not_mux_4to1
syn keyword vhdlStatement not_mux_8to1 not_select_1of2 not_select_1of3 not_select_1of4 not_select_1of8
syn keyword vhdlStatement oa_2x1 oa_2x1x1 oa_2x1x1x1 oa_2x2 oa_2x2x1 oa_2x2x1x1 oa_2x2x2 oa_2x2x2x1
syn keyword vhdlStatement oa_2x2x2x2 oa_3x1 oa_3x2 oa_3x3 oa_4x1 oa_4x2 oa_4x3 oa_4x4
syn keyword vhdlStatement oai_2x1 oai_2x1x1 oai_2x1x1x1 oai_2x2 oai_2x2x1 oai_2x2x1x1 oai_2x2x2
syn keyword vhdlStatement oai_2x2x2x1 oai_2x2x2x2 oai_3x1 oai_3x2 oai_3x3 oai_4x1 oai_4x2
syn keyword vhdlStatement oai_4x3 oai_4x4 octstring or or_2 or_3 or_4 or_5 or_6 or_7 or_8
syn keyword vhdlStatement or_reduce orthogonal orthogonal_extended
syn keyword vhdlStatement parity parity_gen_even parity_gen_odd parity_map put_net
syn keyword vhdlStatement read readline rem resize resolved reverse ripple_adder
syn keyword vhdlStatement rising_edge rol ror rotate_left rotate_right
syn keyword vhdlStatement select_1of2 select_1of3 select_1of4 select_1of8 shift_left shift_right
syn keyword vhdlStatement shutinf shutoutf signed_equal signed_less signed_less_or_equal signed_num_bits sll
syn keyword vhdlStatement srl std_match stick_net
syn keyword vhdlStatement tconv terminator tie_0 tie_1 to to_01 to_bit to_bitvector to_integer
syn keyword vhdlStatement to_signed to_std_ulogic_vector to_stdlogicvector to_unsigned
syn keyword vhdlStatement to_x01 to_x01d to_x01z
syn keyword vhdlStatement unsigned_equal unsigned_less unsigned_less_or_equal unsigned_num_bits
syn keyword vhdlStatement unstick_net ux01
syn keyword vhdlStatement vdd vector_tie_0 vector_tie_1 vtiming
syn keyword vhdlStatement write writeline
syn keyword vhdlStatement xnor xnor_2 xnor_3 xnor_reduce xor xor_2 xor_3 xor_reduce xrol
syn keyword vhdlStatement xror xsll xsra xsrl

" MR_EXPAND  {{{1
"  Keywords {{{2
syn keyword MR_EXPAND_Keyword MR_EXPAND containedin=MR_EXPAND_Region contained

"  Prefix {{{2
syn match   MR_EXPAND_Prefix  "^--"     containedin=MR_EXPAND_Region contained contains=NONE

"  Region {{{2
syn region  MR_EXPAND_Region start="\s*--\s*MR_EXPAND" end="\s*--\s*MR_EXPAND" keepend contains=Bugspray_Inline,Figtree_Inline,Bugspray_Perf_Prefix,@StrmPreProc,@MR7,vhdlSpecial,vhdlStatement,vhdlCharacter,vhdlString,vhdlVector,vhdlBoolean,vhdlComment,vhdlNumber,vhdlTime,vhdlType,vhdlOperator,vhdlGlobal,vhdlAttribute

"  Generated {{{2
syn region  MR_EXPAND_Generated start="-\+\sEXPAND\sSTART\s-\+" end="-\+\sEXPAND\sEND\s-\+"
syn region  MR_EXPAND_Generated start="--\sExpanded\sVHDL"      end="--\sEnd MR_EXPAND"

" Inline Bugspray and Figtree  {{{1
"  Bugspray {{{2
syn match  Bugspray_Inline_Prefix        "^\s*\(--\)\{0,1}\s*--\!\!"   containedin=Bugspray_Inline contained contains=NONE
syn match  Bugspray_Inline               "^\s*\(--\)\{0,1}\s*--\!\!.*"                                       contains=@BS,vhdlSpecial,vhdlStatement,vhdlCharacter,vhdlString,vhdlVector,vhdlBoolean,vhdlComment,vhdlNumber,vhdlTime,vhdlType,vhdlOperator,vhdlGlobal,vhdlAttribute 
" Special case for Stream Preprocessor's Define being more than one line
syn match  PreProc_Define_Newline_Prefix "\s*--!!"                     skipwhite nextgroup=PreProc_Define_Constant                containedin=PreProc_Define contained
syn match  PreProc_Define                "%define\s\+\w\+\s\+.*\(\\\s*\n\s*--!!.*\)\{0,}\(\\\s*\n\s*--!!.*\)"
syn match  Bugspray_Perf_Prefix          "^\s*\(--\)\{0,1}\s*--perf"

"  Figtree {{{2
syn match  Figtree_Inline_Prefix         "^\s*\(--\)\{0,1}\s*--\#\#"   containedin=Figtree_Inline contained contains=NONE
syn match  Figtree_Inline                "^\s*\(--\)\{0,1}\s*--\#\#.*"                                      contains=@FT
" Special case for Stream Preprocessor's Define being more than one line
syn match  PreProc_Define_Newline_Prefix "\s*--##"                     skipwhite nextgroup=PreProc_Define_Constant,PreProc_Exp containedin=PreProc_Define contained
syn match  PreProc_Define                "%define\s\+\w\+\s\+.*\(\\\s*\n\s*--##.*\)\{0,}\(\\\s*\n\s*--##.*\)"   


" Highlighting Settings {{{1
hi def link  MR_EXPAND_Prefix                  PreProc    
hi def link  MR_EXPAND_Keyword                 PreProc    
hi def link  MR_EXPAND_Generated               PreProc    

hi def link  Bugspray_Inline_Prefix            PreProc    
hi def link  Bugspray_Perf_Prefix              PreProc    
hi def link  Figtree_Inline_Prefix             PreProc    
