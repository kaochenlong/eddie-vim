" CoffeeScript
if executable("coffee")
  autocmd BufRead,BufNewFile *.coffee map <F5> :CoffeeRun<CR>
else
  autocmd BufRead,BufNewFile *.coffee map <F5> :echo "you need to install CoffeeScript first!"<CR>
endif
