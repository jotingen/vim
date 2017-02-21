" Figtree syntax file
" Language:		 Figtree
" Maintainer:  James Tingen <jtingen@us.ibm.com>

syn case ignore

" Keywords  {{{1
syn keyword Keyword address attr
syn keyword Keyword comment cdial cview
syn keyword Keyword dial downto
syn keyword Keyword eccdial eccfunc ecc_package entity
syn keyword Keyword figtree_source
syn keyword Keyword galias gdial gview
syn keyword Keyword idial iview
syn keyword Keyword lalias ldial lview
syn keyword Keyword malias mdial mregister mview
syn keyword Keyword not nsview nswitch
syn keyword Keyword register
syn keyword Keyword sview switch
syn keyword Keyword to
syn keyword Keyword wregister
syn keyword Keyword xnor xor

" Numbers  {{{1
syn match   Number   /[0-9]\+/           
syn match   Ignore   /\D[0-9]\+/           
syn match   Number   /0b[0-1]\+/      
syn match   Number   /0x[0-9a-fA-F]\+/

" Special  {{{1
syn match   SpecialChar  /[().,:;\[\]]/

" Strings  {{{1
syn region  String   start=/\"/ end=/\"/
syn region  String   start=/\'/ end=/\'/

" Comments  {{{1
syn match   Comment "--.*"    
syn match   Comment "//.*"    
syn region  Comment start="/\*" end="\*/"

" Stream Preprocessor  {{{1
runtime! syntax/StrmPreProc.vim

