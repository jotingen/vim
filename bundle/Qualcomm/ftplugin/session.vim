" Session filetype plugin file
" Language:    session.log
" Maintainer:  James Tingen <jtingen@qti.qualcomm.com>

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

autocmd BufEnter session :syn sync minlines=200

" Source Garretts filterer
source /usr2/gmd/.vim/plugin/session_utils.vim













