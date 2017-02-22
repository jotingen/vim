" Endpoint Report syntax file
" Language:		 Endpoint Report
" Maintainer:  James Tingen <jtingen@us.ibm.com>

syn case ignore

" Ranges  {{{1
syn match    RangeStartEnd /^-\+\s*$/ contained containedin=EPRange
syn match    RangeSubStartEnd /^\.\+\s*$/ contained containedin=EPRange
syn region   EPRange start=/^-\+\s*$/ end=/^-\+\s*$/ 

" Highlighting Settings  {{{1
hi def RangeStartEnd ctermfg=grey ctermbg=grey
hi def RangeSubStartEnd ctermfg=lightgrey ctermbg=lightgrey
