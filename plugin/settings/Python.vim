" run scripts, for non-GUI Vim
autocmd BufRead,BufNewFile *.py map <leader>0 :% w !python<CR>

" run scripts, for GUI Vim
autocmd BufRead,BufNewFile *.py map <C-CR> :% w !python<CR>
