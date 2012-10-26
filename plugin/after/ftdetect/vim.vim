" VimScript
autocmd BufRead,BufNewFile *.vim map <F5> :source %<CR>:echon "script reloaded!"<CR>
