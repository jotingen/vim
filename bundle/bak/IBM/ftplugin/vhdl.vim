" Vim filetype plugin file
" Language:    VHDL files
" Maintainer:  James Tingen (jtingen@us.ibm.com)
" Last Change: 2011/11/05

" Only do this when not done yet for this buffer
if exists("b:did_ftplugin")
  finish
endif

" Don't load another plugin for this buffer
let b:did_ftplugin = 1

" Automatically put a "--" when in an MR7 loop and try to match 
" the previous lines indention
function! <SID>customIndent()
  let s:command = ""

  " Check if we are in an MR_LOOP or MR_EXPAND, and add --
  let s:line = line('.')
  call cursor(line('.'),1)
  let s:loopStart  = match(getline(s:line), '^\s*--\s*MR_LOOP\s\+\w\+\s\+\w\+\s\+\w\+\s*$')!=-1 || match(getline(s:line), '^\s*--\s*MR_EXPAND\s*$')!=-1
  let s:loopInside = searchpair('^\s*--\s*MR_LOOP\s\+\w\+\s\+\w\+\s\+\w\+\s*$', '', '^\s*--\s*MR_LOOP\s\+END\s*$', 'bW') || searchpair('^\s*--\s*MR_EXPAND\s*$', '', '^\s*--\s*MR_EXPAND\s\+END\s*$', 'bW')
  if s:loopStart
    let s:command .= "--"
  elseif s:loopInside
    let s:command .= "--"
  endif

  " Add spaces to reach the last line's indent
  let s:offset = 0
  if s:loopInside
    while !s:loopStart && match(getline(s:line-s:offset), '^--\s*$')!=-1
      let s:offset += 1
      let s:loopStart  = match(getline(s:line-s:offset), '^\s*--\s*MR_LOOP\s\+\w\+\s\+\w\+\s\+\w\+\s*$')!=-1 || match(getline(s:line-s:offset), '^\s*--\s*MR_EXPAND\s*$')!=-1
    endwhile
    if s:loopStart
      let s:numberOfSpaces = 0
    else
      let s:numberOfSpaces = len(matchlist(getline(s:line-s:offset), '^\(--\)\=\(\s*\)\S')[2])
    endif
    let s:count = 0
    while s:count < s:numberOfSpaces
      let s:command .= " "
      let s:count += 1
    endwhile
  endif



  return s:command
endfunction

inoremap <expr><buffer> <CR> "\r".<SID>customIndent()
nnoremap <expr><buffer> o "o".<SID>customIndent()
nnoremap <expr><buffer> O "O".<SID>customIndent()


"Expand and run MR7 on a file
"Delete lines/reload in order to keep undo history
command! -bang MR7 call ExpandMR7()
function! ExpandMR7()
  " save current view 
  mkview
  " make temp folders
  silent !mkdir -p /tmp/vimr7
  " save file
  w! /tmp/vimr7/%
  "move into temp dir
  cd /tmp/vimr7
  " run expandMR7 on file
  !/afs/raleigh.ibm.com/u0/jtingen/bin/p8_ifu/expandMR7 %:t 
  "move back
  cd -
  " delete all lines
  %d
  " read file back into buffer
  r /tmp/vimr7/%
  " remove the superfluous line
  1d
  " reload view
  silent loadview
  endfunc

"Expand and run MR7 on a file, then write
"Delete lines/reload in order to keep undo history
command! -bang MR7write call WriteExpandMR7()
function! WriteExpandMR7()
  call ExpandMR7()
  w
  endfunc

"Expand and run MR7.beta on a file
"Delete lines/reload in order to keep undo history
command! -bang MR7beta call ExpandMR7beta()
function! ExpandMR7beta()
  " save current view 
  mkview
  " make temp folders
  silent !mkdir -p /tmp/vimr7
  " save file
  w! /tmp/vimr7/%
  "move into temp dir
  cd /tmp/vimr7
  " run expandMR7 on file
  !/afs/raleigh.ibm.com/u0/jtingen/bin/p8_ifu/expandMR7 %:t -b 
  "move back
  cd -
  " delete all lines
  %d
  " read file back into buffer
  r /tmp/vimr7/%
  " remove the superfluous line
  1d
  " reload view
  silent loadview
  endfunc

"Expand and run MR7.beta on a file, then write
"Delete lines/reload in order to keep undo history
command! -bang MR7writebeta call WriteExpandMR7beta()
function! WriteExpandMR7beta()
  call ExpandMR7beta()
  w
  endfunc

