" run scripts, for non-GUI Vim
autocmd BufRead,BufNewFile *.py map <F5> :% w !python<CR>

" run scripts, for GUI Vim
autocmd BufRead,BufNewFile *.py map <C-CR> :% w !python<CR>
