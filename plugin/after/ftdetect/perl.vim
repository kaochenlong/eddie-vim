" Perl
if executable("perl")
  autocmd BufRead,BufNewFile *.pl map <F5> :% w !perl %<CR>
else
  autocmd BufRead,BufNewFile *.pl map <F5> :echo "you need to install Perl first!"<CR>
end
