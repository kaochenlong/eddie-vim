" if silver searcher is installed, use `ag` instead of `ack`
" for more information, please visit https://github.com/ggreer/the_silver_searcher
if executable("ag")
  let g:ackprg = 'ag --nogroup --nocolor --column'
  noremap FF :Ack<SPACE>
else
  if executable("ack")
    noremap FF :Ack<SPACE>
  else
    noremap FF :echo "Sorry, you need to install ack or ag first!"<CR>
  endif
endif
