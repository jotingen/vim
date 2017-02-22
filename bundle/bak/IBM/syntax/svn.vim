" SVN Comments syntax file
" Language:		 SVN Comments
" Maintainer:  James Tingen <jtingen@us.ibm.com>

" SVN Headers  {{{1
syn match svnHeader   /\$\s*$/ contained containedin=svnComments
syn match svnHeader   /\$\w\+/ contained containedin=svnComments
syn match svnHeader   /\$\w\+\:/ contained containedin=svnComments
syn match Comment     /--/ contained containedin=svnComments
syn match svnComments /--\s*\$\w\+\$/
syn match svnComments /--\s*\$\w\+\:.*\$/

" Highlighting Settings {{{1
hi def link  svnHeader                         PreProc
