" my filetype file
if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
au! BufRead,BufNewFile * if getline(1) =~ 'perl' | setf perl | endif
au! BufRead,BufNewFile * if getline(1) =~ 'perl6' | setf perl6 | endif
au! BufRead,BufNewFile *.csv,*.dat    setfiletype csv
augroup END
