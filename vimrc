" Setup plugins with pathogen
call pathogen#infect()

" Fix the funny thing with backspace and delete not working right
set t_kb=

" Tell VIM to check whole file before syntax highlighting
filetype plugin on
syntax on
" syntax sync fromstart
" autocmd BufEnter * :syntax sync fromstart

" Change directory to the file's
autocmd BufEnter * lcd %:p:h

" Define colors
set t_Co=256
"Solarized
let g:solarized_termcolors=   256
let g:solarized_termtrans =   1
let g:solarized_degrade   =   0
let g:solarized_bold      =   1
let g:solarized_underline =   0
let g:solarized_italic    =   1
let g:solarized_contrast  =   "normal"
let g:solarized_visibility=   "normal"
set background=light
colorscheme solarized

" Airline Statusbar
set laststatus=2
set ttimeoutlen=50
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_y = ''
let g:airline_theme='solarized'

" Appearance
set wildchar=<Tab> wildmenu wildmode=full "Show matches when tab completing
set number                  "Show line numbers
set nowrap                  "Do not linewrap
set foldmethod=marker
autocmd WinEnter * setlocal cursorline    " Set cursorline when entering window
autocmd WinLeave * setlocal nocursorline  " Remove cursorline when leaving window

" Set items for view @ bottom of windows
set ruler                   " Show the cursor position all the time
set showcmd                 " Display incomplete commands
set showmode                " Display current mode
set ls=2                    " Always show status bar

" Behavior
set backspace=indent,eol,start
set so=3
set siso=3
set autoread
set iskeyword+=#
set virtualedit=all
set hid                     " Hide buffers instead of close
set ignorecase              " Ignore case when searching
set hlsearch                " Highlight matched terms
set history=1000            " Remember more commands
set undolevels=1000         " Remember more levels of undo
"Restore fold status
au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

" Key Mapping
nnoremap ; :
imap jj <Esc>

"Easier block commenting in vhdl
vmap <leader>c :s/^/--/<CR>\\
vmap <leader>d :s/^--//<CR>\\

"Easier window/tab navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-t>k :tabr<cr>
map <C-t>j :tabl<cr>
map <C-t>h :tabp<cr>
map <C-t>l :tabn<cr>

"Use \\ to clear highlighted matches
nmap <silent> <leader>\ :let @/=""<CR>

"Shortcuts for NERDTree
nmap <leader>n :NERDTreeClose<CR>:NERDTreeToggle<CR>
nmap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap <leader>N :NERDTreeClose<CR>

map OH <Home>
map OF <End>
imap OH <Home>
imap OF <End>

" Commands
"Easily edit and source .vimrc
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

"Reload a file and restore cursor postion while keeping the undo history
command! -bang Reload call ReloadFile()
function! ReloadFile()
  " save current view
  mkview
  " delete all lines
  %d
  " read the file back into the buffer
  r
  " remove the superfluous line
  1d
  " reload view
  silent loadview
  endfunc

"Force myself to not use arrow keys by remapping
"  The `Up` arrow key deletes a blank line above the current line
"  (a non-empty line will not be deleted), while the `Down` arrow
"  key inserts a blank line above the current line. The result is
"  hitting `Up` or `Down` moves the current line up or down, in both
"  normal as well as insert mode.

"  Typing `Ctrl-Up` and `Ctrl-Down`, instead, deletes or inserts a
"  blank line below the current line. The result is that the text
"  below the current line moves up or down, respectively.

"  Typing `Left` de-dents the current line, while `Right` indents it.
"  The result is that text shifts left and right, respectively

function! DelEmptyLineAbove()
  if line(".") == 1
  return
  endif
  let l:line = getline(line(".") - 1)
  if l:line =~ '^\s*$'
  let l:colsave = col(".")
  .-1d
  silent normal! <C-y>
  call cursor(line("."), l:colsave)
  endif
  endfunction

function! AddEmptyLineAbove()
  let l:scrolloffsave = &scrolloff
  " Avoid jerky scrolling with ^E at top of window
  set scrolloff=0
  call append(line(".") - 1, "")
if winline() != winheight(0)
  silent normal! <C-e>
  endif
  let &scrolloff = l:scrolloffsave
  endfunction

function! DelEmptyLineBelow()
  if line(".") == line("$")
  return
  endif
  let l:line = getline(line(".") + 1)
  if l:line =~ '^\s*$'
  let l:colsave = col(".")
  .+1d
  ''
  call cursor(line("."), l:colsave)
  endif
  endfunction

function! AddEmptyLineBelow()
  call append(line("."), "")
  endfunction

  " Arrow key remapping: Up/Dn = move line up/dn; Left/Right = indent/unindent
function! SetArrowKeysAsTextShifters()
  " normal mode
  nmap <silent> <Left> <<
  nmap <silent> <Right> >>
  nnoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>
  nnoremap <silent> <Down>  <Esc>:call AddEmptyLineAbove()<CR>
  nnoremap <silent> <C-Up> <Esc>:call DelEmptyLineBelow()<CR>
  nnoremap <silent> <C-Down> <Esc>:call AddEmptyLineBelow()<CR>

  " visual mode
  vmap <silent> <Left> <
  vmap <silent> <Right> >
  vnoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>gv
  vnoremap <silent> <Down>  <Esc>:call AddEmptyLineAbove()<CR>gv
  vnoremap <silent> <C-Up> <Esc>:call DelEmptyLineBelow()<CR>gv
  vnoremap <silent> <C-Down> <Esc>:call AddEmptyLineBelow()<CR>gv

  " insert mode
  imap <silent> <Left> <C-D>
  imap <silent> <Right> <C-T>
  inoremap <silent> <Up> <Esc>:call DelEmptyLineAbove()<CR>a
  inoremap <silent> <Down> <Esc>:call AddEmptyLineAbove()<CR>a
  inoremap <silent> <C-Up> <Esc>:call DelEmptyLineBelow()<CR>a
  inoremap <silent> <C-Down> <Esc>:call AddEmptyLineBelow()<CR>a

  " disable modified versions we are not using
  nnoremap  <S-Up>     <NOP>
  nnoremap  <S-Down>   <NOP>
  nnoremap  <S-Left>   <NOP>
  nnoremap  <S-Right>  <NOP>
  vnoremap  <S-Up>     <NOP>
  vnoremap  <S-Down>   <NOP>
  vnoremap  <S-Left>   <NOP>
  vnoremap  <S-Right>  <NOP>
  inoremap  <S-Up>     <NOP>
  inoremap  <S-Down>   <NOP>
  inoremap  <S-Left>   <NOP>
  inoremap  <S-Right>  <NOP>
  endfunction

call SetArrowKeysAsTextShifters()

" Plugins

  " matchit
  runtime macros/matchit.vim

  " supertab
  let g:SuperTabDefaultCompletionType = 'context'

  " ctrlp
  map <leader>p :CtrlP $WORKSPACE<CR>
  let g:ctrlp_follow_symlinks = 1
  let g:ctrlp_show_hidden = 1

  " buffet
  map <leader>be :Bufferlist<CR>

" GUI
if has("gui_running")
  set guifont=Hack
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=L  "remove left-hand scroll bar
  "Dont move cursor
  nnoremap <LeftMouse> ma<LeftMouse>`a 
endif
