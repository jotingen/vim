" PLA filetype plugin file
" Language:    PLA
" Maintainer:  James Tingen <jtingen@qti.qualcomm.com>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

augroup CursorLine
    au!
    au VimEnter *.pla setlocal cursorline cursorcolumn
    au WinEnter *.pla setlocal cursorline cursorcolumn
    au BufWinEnter *.pla setlocal cursorline cursorcolumn
    au WinLeave *.pla setlocal nocursorline nocursorcolumn
augroup END

" Indenting
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
