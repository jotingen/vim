" Bugspray syntax file
" Language:		 Bugspray
" Maintainer:  James Tingen <jtingen@us.ibm.com>

" VHDL Syntax  {{{1
if !exists("b:vhdlLoaded")
  "Do not want to rerun this if we are being called from vhdl syntax
  runtime! syntax/vhdl.vim
endif

" VHDL Keywords {{{1
syn keyword vhdlStatement count
syn keyword vhdlStatement encode_onehot emux
syn keyword vhdlStatement fail
syn keyword vhdlStatement gate
syn keyword vhdlStatement mux
syn keyword vhdlStatement one_hot
syn keyword vhdlStatement popcount
syn keyword vhdlStatement random_bit random_bit_vec random_integer_unbiased
syn keyword vhdlStatement random_bit_clk random_bit_vec_clk random_integer_unbiased_clk
syn keyword vhdlStatement zero_or_one_hot

" Stream Processor Syntax {{{1
runtime! syntax/StrmPreProc.vim
