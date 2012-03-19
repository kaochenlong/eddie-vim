" split window resize
if bufwinnr(1)
  map <C-W>0 :resize +10<CR>
  map <C-W>9 :resize -10<CR>
  map <C-W>. :vertical resize +30<CR>
  map <C-W>, :vertical resize -30<CR>
endif

" make the current window bigger
"set winwidth=84
set winheight=5
set winminheight=5
set winheight=999
