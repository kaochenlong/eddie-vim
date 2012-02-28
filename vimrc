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
set nofoldenable
set number
set numberwidth=5
set title
set showmode
set nobomb
set nostartofline
set laststatus=2

filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins

autocmd! bufwritepost .vimrc source ~/.vimrc

syntax on		" syntax highlight
set hlsearch		" search highlighting
syntax enable
"set background=dark
colorscheme ir_black
"colorscheme railscasts
set t_Co=256

set nobackup		" no *~ backup files
set noswapfile
set nowb
set copyindent		" copy the previous indentation on autoindenting
set ignorecase		" ignore case when searching
set smartcase		"
set smarttab		" insert tabs on the start of a line according to
set expandtab           "replace <TAB> with spaces
set softtabstop=2
set shiftwidth=2
au FileType Makefile set noexpandtab

" disable sound on errors
set visualbell
set noerrorbells
set t_vb=
set tm=500

set encoding=utf-8
set fileencodings=utf-8,big5,euc-jp,gbk,euc-kr,utf-bom,iso8859-1,euc-jp,utf-16le
set fenc=utf-8 enc=utf-8 tenc=utf-8

augroup filetypedetect
  au! BufNewFile,BufRead *.as  setf actionscript
  au! BufNewFile,BufRead *.m setf objc
  au! BufNewFile,BufRead *.scss setf scss
augroup END

" for Tabularize
inoremap <silent> <Bar>   <Bar><Esc>:call <SID>align()<CR>a
function! s:align()
  let p = '^\s*|\s.*\s|\s*$'
  if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
    let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
    let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
    Tabularize/|/l1
    normal! 0
    call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
  endif
endfunction

" ===============================
" custom key and plugin configurations
" ===============================
" add a new line without entering insert mode
map <S-Enter> o<Esc>

" cancel searched highlight
noremap ; :nohlsearch<cr>

" identation
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv

" select ALL
map <c-a> ggVG

" NERDTree
nnoremap <silent> <F2> :NERDTreeMirrorToggle<CR>
let NERDTreeShowBookmarks  = 0
let g:nerdtree_tabs_focus_on_files = 1

" comment
map <Leader><Leader> <Leader>c<space>

" remove tailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" easy motion
let g:EasyMotion_leader_key = '<Leader>'

" vimgrep
map <leader>g :vimgrep //j **/*.*<left><left><left><left><left><left><left><left><left>

" remap VIM 0
map 0 ^

" force myself to not to use the error keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" fuzzyfinder
map <silent> <c-\>f :FufCoverageFile<cr>
"map <silent> <c-\>f :FufFile<cr>
map <silent> <c-\>d :FufDir<cr>
map <silent> <c-\>b :FufBuffer<cr>

" Yankring
nnoremap <silent> <F11> :YRShow<CR>
let g:yankring_history_dir='/tmp'

" next and prev tab
noremap <F7> gT
noremap <F8> gt

" run scripts
autocmd BufRead,BufNewFile *.rb map <c-CR> :% w !ruby -w<CR>
autocmd BufRead,BufNewFile *.py map <c-CR> :% w !python<CR>

" vim-powerline
let g:Powerline_symbols = 'fancy'

" command-t
let g:CommandTAcceptSelectionMap = '<C-t>'
let g:CommandTAcceptSelectionTabMap = '<CR>'

" EasyGrep
let g:EasyGrepMode = 2
let g:EasyGrepIgnoreCase = 1
let g:EasyGrepRecursive = 1

" QuickFix Window
command -bang -nargs=? QFix call QFixToggle(<bang>0)
function! QFixToggle(forced)
if exists("g:qfix_win") && a:forced == 0
  cclose
  unlet g:qfix_win
else
  copen 10
  let g:qfix_win = bufnr("$")
endif
endfunction
nnoremap <leader>q :QFix<CR>
