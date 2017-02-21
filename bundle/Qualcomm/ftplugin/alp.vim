" ALP filetype plugin file
" Language:    ALP
" Maintainer:  James Tingen <jtingen@qti.qualcomm.com>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

augroup CursorLine
    au!
    au VimEnter *.alp setlocal cursorline cursorcolumn
    au WinEnter *.alp setlocal cursorline cursorcolumn
    au BufWinEnter *.alp setlocal cursorline cursorcolumn
    au WinLeave *.alp setlocal nocursorline nocursorcolumn
augroup END

