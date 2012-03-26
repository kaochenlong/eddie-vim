autocmd BufRead,BufNewFile *.coffee map <F5> :% w<CR>:echon "Compiling..."<CR>:silent CoffeeMake<CR>:redraw!<CR>:echon "Done!"<CR>
