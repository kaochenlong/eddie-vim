call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

set nocompatible	" not compatible with the old-fashion vi mode
set bs=2		" allow backspacing over everything in insert mode
set history=50		" keep 50 lines of command line history
set undolevels=100
set ruler		" show the cursor position all the time
set autoread		" auto read when file is changed from outside
set linespace=0
set cursorline
"set cursorcolumn
set number
set numberwidth=5
set title
set showmode
set nofoldenable
set nobomb
set nostartofline

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on		" syntax highlight
set hlsearch		" search highlighting
syntax enable
set background=dark
colorscheme railscasts

set nobackup		" no *~ backup files
set noswapfile
set nowb
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		"
set smarttab		" insert tabs on the start of a line according to

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

set expandtab        "replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
au FileType Makefile set noexpandtab

set laststatus=2
set statusline=\ %{HasPaste()}%<%-15.25(%f%)%m%r%h\ %w\ \
set statusline+=\ \ \ [%{&ff}/%Y]
set statusline+=\ \ \ %<%20.30(%{hostname()}:%{CurDir()}%)\
set statusline+=%=%-10.(%l,%c%V%)\ %p%%/%L

function! CurDir()
  let curdir = substitute(getcwd(), $HOME, "~", "")
  return curdir
endfunction

function! HasPaste()
  if &paste
    return '[PASTE]'
  else
    return ''
  endif
endfunction

set encoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le
set fenc=utf-8 enc=utf-8 tenc=utf-8

augroup filetypedetect
  au! BufNewFile,BufRead *.as  setf actionscript
  au! BufNewFile,BufRead *.m setf objc
augroup END

" ===============================
" custom key and configurations
" ===============================
" add a new line without entering insert mode
map <S-Enter> o<Esc>

" cancel searched highlight
noremap ; :nohlsearch<cr>

" select ALL
map <c-a> ggVG

" NERDTree
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" comment
map <Leader><Leader> <Leader>c<space>

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" easy motion
let g:EasyMotion_leader_key = '<Leader>'

" vimgrep
map <leader>g :vimgrep //g **/*.*<left><left><left><left><left><left><left><left><left>

" remap VIM 0
map 0 ^
