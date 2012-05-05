" ActionScript
autocmd BufRead,BufNewFile *.as map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>
autocmd BufRead,BufNewFile *.mxml map <F5> :silent !$FLEX_HOME/bin/mxmlc % \| iconv -f big5 -t utf-8<CR>:redraw!<CR>:echon "Done!"<CR>

" VimScript
autocmd BufRead,BufNewFile *.vim map <F5> :source %<CR>:echon "script reloaded!"<CR>

" CoffeeScript
if executable("coffee")
  autocmd BufRead,BufNewFile *.coffee map <F5> :CoffeeRun<CR>
else
  autocmd BufRead,BufNewFile *.coffee map <F5> :echo "you need to install CoffeeScript first!"<CR>
endif

" Javascript
if executable("js")
  autocmd BufRead,BufNewFile *.js map <F5> :% w !js %<CR>
else
  autocmd BufRead,BufNewFile *.js map <F5> :echo "you need to install ScriptMonkey first!"<CR>
endif

" PHP
if executable("php")
  autocmd BufRead,BufNewFile *.php map <F5> :% w !php<CR>
else
  autocmd BufRead,BufNewFile *.php map <F5> :echo "you need to install PHP first!"<CR>
endif

" Python
if executable("python")
  autocmd BufRead,BufNewFile *.py map <F5> :% w !python<CR>
else
  autocmd BufRead,BufNewFile *.py map <F5> :echo "you need to install Python first!"<CR>
endif

" Ruby
if executable("ruby")
  autocmd BufRead,BufNewFile *.rb map <F5> :% w !ruby -w<CR>
else
  autocmd BufRead,BufNewFile *.rb map <F5> :echo "you need to install Ruby first!"<CR>
endif

" Scala
if executable("scala")
  autocmd BufRead,BufNewFile *.scala map <F5> :% w !scala %<CR>
else
  autocmd BufRead,BufNewFile *.scala map <F5> :echo "you need to install Scala first!"<CR>
end

" Perl
if executable("perl")
  autocmd BufRead,BufNewFile *.pl map <F5> :% w !perl %<CR>
else
  autocmd BufRead,BufNewFile *.pl map <F5> :echo "you need to install Perl first!"<CR>
end
