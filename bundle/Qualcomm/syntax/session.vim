" Vim syntax file
" Language:     session.log
" Maintainer:   Garrett M. Drapala <gmd@qti.qualcomm.com>

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


" case is not significant
syn case ignore

" Session keywords
syn match sessionComponent  ": \zsuvm_[^ ]*"
syn match sessionCyc "UVM_INFO\( @ [0-9][0-9]*\)\="
syn match sessionIntf "\[\([a-zA-Z][=a-zA-Z0-9\:_\.{}#/\(\[.\{-}\]\)]* *\)\=\]"
syn match sessionError "\(UVM_ERROR\|UVM_FATAL\)\( @ [0-9][0-9]*\)\="
syn match sessionWarning "\(UVM_WARNING\)\( @ [0-9][0-9]*\)\="
syn match sessionWarning "\(WARNING\)"
syn match sessionCmd "cmd:[0-9a-z][0-9a-z_]*"
syn match sessionDirCyc "Cyc:[0-9][0-9]*"
"syn match sessionDirStateChg "{.*}"

" Define these later to give them priority.
syn match sessionId  "\Wid=[0-9][:0-9a-fA-F]*"
syn match sessionGid "gid=[0-9][0-9]*"
syn match sessionSeq "\[\?seq_no=[0-9][0-9]*\]\?"
syn match sessionUid "uid:[0-9][0-9]*"

" Define these even later to give them further priority and as they contain
" other matches.
syn match sessionData ".* data=.*" contains=sessionCyc,sessionComponent,sessionError,sessionWarning,sessionIntf,sessionSeq
"syn match sessionBlank "^ .*" contains=sessionError,sessionWarning,sessionSeq,sessionIntf

" Define the default highlighting.
" For version 5.7 and earlier: only when not done already
" For version 5.8 and later: only when an item doesn't have highlighting yet
if version >= 508 || !exists("did_session_syntax_inits")
  if version < 508
    let did_session_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

" with ir_green_on_black colorscheme (based on ir_black),
" ErrorMsg is white text on red background
" Error is white text with red squiggly underline
" Statement is blue
" Number is pink
" Comment is grey
" Type is beige
" Normal is green
" String is white
" Special is salmon
" Title is white background and orange text

" HiLink sessionCmd          Keyword
  HiLink sessionCmd          Title
  HiLink sessionData         Comment
  HiLink sessionBlank        Comment
  HiLink sessionCyc          Number
  HiLink sessionIntf         Statement
  HiLink sessionError        ErrorMsg
  HiLink sessionWarning      WarningMsg

  HiLink sessionId           Special
  HiLink sessionSeq          Special
" HiLink sessionGid          Special
  HiLink sessionUid          Special

  HiLink sessionComponent    PreProc
  HiLink sessionDirCyc       Type
" HiLink sessionDirRefMdlId  Type
" HiLink sessionDirStateChg  Type
  delcommand HiLink
endif

let b:current_syntax = "session"
