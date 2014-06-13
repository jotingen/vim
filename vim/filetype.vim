" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
au! BufRead,BufNewFile * if getline(1) =~ 'perl' | setf perl | endif
augroup END
