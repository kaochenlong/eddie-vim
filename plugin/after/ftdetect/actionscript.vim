" ActionScript
autocmd BufRead,BufNewFile *.as map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>
autocmd BufRead,BufNewFile *.mxml map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>
