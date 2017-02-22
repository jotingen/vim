" Verilog filetype plugin file
" Language:    Verilog
" Maintainer:  James Tingen <jtingen@qti.qualcomm.com>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Highlight the 100th column
set colorcolumn=100

" Indenting
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
