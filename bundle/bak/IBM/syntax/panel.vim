" Panel syntax file
" Language:    Panel
" Maintainer:  James Tingen <jtingen@us.ibm.com>

" C Syntax  {{{1
syn include @C syntax/c.vim

" Tokens  {{{1
syn match Token /\$\d*\$/ contained 
syn match Token_Declarations /[\@;,]/ contained 

" Code  {{{1
syn region Code start=/^/ end=/\%$/ contains=@C

" Panel Region  {{{1
syn region Panel_Region start=/%\{10}%*$/ end=/%\{10}$/ keepend contains=@C,Token,Token_Declarations
syn region Panel_Region start=/\%^/ end=/^%\{10}/ keepend contains=Token

" Highlighting Settings  {{{1
hi def link Token              Special
hi def link Token_Declarations Special
