" Swift
if executable("xcrun")
  autocmd BufRead,BufNewFile *.swift map <F5> :% w !xcrun swift -i %<CR>
else
  autocmd BufRead,BufNewFile *.swift map <F5> :echo "you need to install Xcode first!"<CR>
endif
