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
if exists('+colorcolumn')
    setlocal colorcolumn=100
endif
