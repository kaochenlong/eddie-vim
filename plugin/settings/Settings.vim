set nocompatible                      " not compatible with the old-fashion vi mode
set backspace=2                       " allow backspacing over everything in insert nc >kkmode
set history=1000                      " keep 1000 lines of command line history
set undolevels=100
set ruler                             " show the cursor position all the time
set autoread                          " auto read when file is changed from outside
set wrap
set linebreak
set nolist
set hidden
set linespace=0
set cursorline
set nofoldenable
set number
set numberwidth=4
set title
set showmode
set nobomb                            " no BOM(Byte Order Mark)
set nostartofline
set laststatus=2
set clipboard+=unnamed
set splitright                        " always open vertical split window in the right side
set splitbelow                        " always open horizontal split window below
set scrolloff=3                       " start scrolling when n lines away from margins
set switchbuf=useopen
set showtabline=2                     " always show tab
set wildmode=longest,list             " use emacs-style tab completion when selecting files, etc
set wildmenu                          " make tab completion for files/buffers act like bash
set key=			      " disable encryption
set synmaxcol=2048

filetype on                           " enable filetype detection
filetype indent on                    " enable filetype-specific indenting
filetype plugin on                    " enable filetype-specific plugins

syntax on                             " syntax highlight
set hlsearch                          " search highlighting
set incsearch                         " incremental search
syntax enable
set t_Co=256
colorscheme rails_envy

set nobackup                          " no *~ backup files
set noswapfile
set nowb
set copyindent                        " copy the previous indentation on autoindenting
set ignorecase                        " ignore case when searching
set smartcase
set smarttab                          " insert tabs on the start of a line according to
set expandtab                         " replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
set noexpandtab
set shortmess=I                       " remove splash wording

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

" file encoding
set encoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le
set fenc=utf-8 enc=utf-8 tenc=utf-8
scriptencoding utf-8

" ignores
set wildignore+=*.o,*.obj,*.pyc                " output objects
set wildignore+=*.png,*.jpg,*.gif,*.ico        " image format
set wildignore+=*.swf,*.fla                    " image format
set wildignore+=*.mp3,*.mp4,*.avi,*.mkv        " media format
set wildignore+=*.git*,*.hg*,*.svn*            " version control system
set wildignore+=*sass-cache*
set wildignore+=*.DS_Store
set wildignore+=log/**
set wildignore+=tmp/**

" cursorline switched while focus is switched to another split window
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline

" ======================================
"  custom key and plugin configurations
" ======================================
" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" comment
map <Leader><Leader> <Leader>c<space>

" next and prev tab
noremap <F7> gT
noremap <F8> gt

" identation
nmap <TAB> v>
nmap <S-TAB> v<
vmap <TAB> >gv
vmap <S-TAB> <gv

" remap VIM 0
map 0 ^

" return current opened file's dirctory
cnoremap %% <C-R>=expand('%:h').'/'<CR>

" quick open vimrc in a new tab
nmap <leader>v :tabe $MYVIMRC<CR>
map <leader>0 :topleft 100 :split README.md<CR>
