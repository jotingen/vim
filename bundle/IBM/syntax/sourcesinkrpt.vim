" Sourceless Sinkless Report syntax file
" Language:		 Sourceless Sinkless Report
" Maintainer:  James Tingen <jtingen@us.ibm.com>

syntax include @VHDL syntax/vhdl.vim

syn case ignore

" Header and Footer  {{{1
syn region  PreProc start=/+-/ end=/-+/
syn region  PreProc start=/|/ end=/|/
syn match   PreProc /Sourceless\/Sinkless\sReport/

" Filenames  {{{1
syn match   SSFileName  /\/.*vhdl/ skipwhite contained containedin=SSFile
syn keyword Keyword     File       skipwhite contained containedin=SSFile nextgroup=SSFileName
syn region  SSFile      start=/^File/ end=/$/

" Table Header  {{{1
syn region  Keyword start=/^Line/ end=/$/
syn region  Keyword start=/^----\s/ end=/$/

" Table  {{{1
syn match   SSMsg     /\w\+/               skipwhite contained containedin=SSLine 
syn match   SSStatus  /\w\+/               skipwhite contained containedin=SSLine nextgroup=SSMsg
syn match   SSStatus  /\w\+\s\w\+/         skipwhite contained containedin=SSLine nextgroup=SSMsg
syn match   SSMode    /\w\+/               skipwhite contained containedin=SSLine nextgroup=SSStatus
syn match   SSName    /\w\+\((.*)\)\{0,}/  skipwhite contained containedin=SSLine nextgroup=SSMode  contains=@VHDL
syn match   Number    /^\d\+/              skipwhite contained containedin=SSLine nextgroup=SSName
syn region  SSLine    start=/^\d/ end=/$/

" Highlighting Settings  {{{1
hi def link SSFileName String
hi def link SSMode     Keyword
hi def link SSStatus   PreProc
hi def link SSMsg      Error
