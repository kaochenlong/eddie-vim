" run scripts, for Non-GUI Vim
autocmd BufRead,BufNewFile *.coffee map <leader>0 :silent CoffeeMake<CR>

" run scripts, for GUI Vim
if has("gui_macvim")
  autocmd BufRead,BufNewFile *.coffee map <D-CR> :silent CoffeeMake<CR>
end
