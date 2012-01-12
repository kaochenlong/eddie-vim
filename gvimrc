if has("gui_macvim")
  "Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  set guifont=Monaco:h18
  colorscheme railscasts
  set transparency=2
  set guioptions=aAce
  set clipboard+=unnamed
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CommandT<CR>
  " Change to NERDTree's root dir
  "set autochdir
  let NERDTreeChDirMode=2

  " map cmd+1~9 to switch tab 1~9
  for i in range(1, 9)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor

  " for mini buffer explorer
  let g:miniBufExplModSelTarget = 1
  let g:miniBufExplorerMoreThanOne = 2
  let g:miniBufExplModSelTarget = 0
  let g:miniBufExplUseSingleClick = 1
  let g:miniBufExplMapWindowNavVim = 1
  let g:miniBufExplVSplit = 25
  let g:miniBufExplSplitBelow= 1
  map <F3> :TMiniBufExplorer<cr>

  " command-T
  set wildignore+=*.o,*.obj,.git,*.pyc

  " ctags
  let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'
  map <F4> :TlistToggle<cr>
endif

