" run scripts, for non-GUI Vim
autocmd BufRead,BufNewFile *.rb map <leader>0 :% w !ruby -w<CR>

" run scripts, for GUI Vim
autocmd BufRead,BufNewFile *.rb map <C-CR> :% w !ruby -w<CR>
