" ActionScript
autocmd BufRead,BufNewFile *.as map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>
autocmd BufRead,BufNewFile *.mxml map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>

" CoffeeScript
"autocmd BufRead,BufNewFile *.coffee map <F5> :silent CoffeeMake!<CR>:redraw!<CR>
autocmd BufRead,BufNewFile *.coffee map <F5> :CoffeeRun<CR>

" Javascript
autocmd BufRead,BufNewFile *.js map <F5> :% w !js %<CR>

" Python
autocmd BufRead,BufNewFile *.py map <F5> :% w !python<CR>

" Ruby
autocmd BufRead,BufNewFile *.rb map <F5> :% w !ruby -w<CR>

" VimScript
autocmd BufRead,BufNewFile *.vim map <F5> :source %<CR>:echon "script reloaded!"<CR>
