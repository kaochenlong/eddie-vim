if executable("ack")
  noremap FF :Ack<SPACE>
else
  noremap FF :echo "Sorry, you need to install ack first!"<CR>
endif
