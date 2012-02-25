if has("gui_macvim")

  "Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
  nmap <D-j> mz:m+<cr>`z
  nmap <D-k> mz:m-2<cr>`z
  vmap <D-j> :m'>+<cr>`<my`>mzgv`yo`z
  vmap <D-k> :m'<-2<cr>`>my`<mzgv`yo`z

  set guifont=Monaco:h18
  colorscheme railscasts
  set transparency=0
  set guioptions=ce
  set clipboard+=unnamed
  set antialias

  " disable default menu hot key
  macmenu &File.New\ Tab key=<nop>
  macmenu &File.New\ Window key=<nop>
  macmenu &File.Close key=<nop>

  " remap cmd + t to command-t
  map <D-t> :CommandT<CR>

  " remap cmd + w to close tab
  map <D-w> :tabclose<CR>

  " remap cmd + n to new tab
  map <D-n> :tabnew<CR>

  " change to NERDTree's root dir
  "set autochdir
  let NERDTreeChDirMode=2

  " map cmd+1~20 to switch tab 1~20
  for i in range(1, 20)
    exec "nnoremap <D-".i."> ".i."gt"
  endfor

  " command-t
  set wildignore+=*.o,*.obj,.git,*.pyc,*.jpg,*.png,*.gif,*.swf,*.fla,*.ico,*.avi,*.mp3
  let g:CommandTAcceptSelectionMap = '<C-t>'
  let g:CommandTAcceptSelectionTabMap = '<CR>'
  let g:CommandTMatchWindowAtTop = 1

  " ctags path
  let Tlist_Ctags_Cmd = '/usr/local/Cellar/ctags/5.8/bin/ctags'
  let Tlist_WinWidth = 40
  map <F4> :TlistToggle<cr>

endif
