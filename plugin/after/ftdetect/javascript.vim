" Javascript
if executable("js")
  autocmd BufRead,BufNewFile *.js map <F5> :% w !js %<CR>
else
  autocmd BufRead,BufNewFile *.js map <F5> :echo "you need to install SpiderMonkey first!"<CR>
endif

autocmd BufRead,BufNewFile *.js map <F9> :JSLintUpdate<CR>
autocmd BufRead,BufNewFile *.js map <F10> :ToggleHighlightError<CR>
