" PHP
if executable("php")
  autocmd BufRead,BufNewFile *.php map <F5> :% w !php<CR>
else
  autocmd BufRead,BufNewFile *.php map <F5> :echo "you need to install PHP first!"<CR>
endif
