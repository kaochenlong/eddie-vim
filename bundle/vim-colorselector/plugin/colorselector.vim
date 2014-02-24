" ColorScheme Selector
" Author: Cornelius  林佑安 (Yo-An Lin) <cornelius.howl@gmail.com>
" Script Type: plugin
"
if !exists("$DOTVIM")
  if has("win16") || has("win32") || has("win64")
    let $DOTVIM = $VIM."/vimfiles"
  else
    let $DOTVIM = $HOME."/.vim"
  endif
endif

fun! s:fetchRandTheme()
  if has('mac')
    cal libcallnr("libc.dylib", "srand","")
    let rand = libcallnr("libc.dylib", "rand","")
  else
    cal libcallnr("libc.so", "srand","")
    let rand = libcallnr("libc.so","rand","")
  endif
  let nr = rand % 500000 + 500000
  let to = expand('$DOTVIM/colors/inspiration' . nr . '.vim')

  echo "Generating..."
  redraw
  cal system('curl http://inspiration.sweyla.com/code/seed/'.nr.'.txt')

  echo "Downloading... => " . to
  redraw
  echo system('curl http://inspiration.sweyla.com/code/vim/inspiration'.nr.'.vim -o ' . to )
  exec 'colors inspiration' . nr
  echo "Done.."
  redraw

  echo "ColorScheme Name: inspiration" . nr
  echo "Press S to save configuration."

  exec 'nmap <script><buffer> S  :cal <SID>setupColorScheme("inspiration'.nr.'",1)<CR>'
endf

fun! s:setupColorScheme(cs,unset)
  let lines = readfile(expand('~/.gvimrc'))
  let idx = 0
  let found = 0
  for line in lines
    if line =~ 'autoconfig$'
      let lines[ idx ] = 'colors ' . a:cs . '  " autoconfig'
      let found = 1
    endif
    let idx += 1
  endfor
  if ! found
    cal add(lines, 'colors ' . a:cs . '  " autoconfig')
  endif
  cal writefile( lines , expand('~/.gvimrc'))

  if a:unset
    nunmap <buffer> S
  endif

  echo "Saved!"
endf

fun! g:SetColor()
  let name = getline('.')
  if name =~ '^=='
    return
  endif

  exec 'colors ' . name
  redraw
  echo "Current colorscheme: " . name
endf


fun! s:renderList()
  let files = split(glob(expand('$DOTVIM/colors/').'*'))
  let runtime_files = split(glob(expand('$VIMRUNTIME/colors/').'*'))
  let idx = 1
  cal setline(idx,"== From Vim Runtime ==")
  let idx+=1
  for file in runtime_files
    let name = matchstr( file , '[-[:alnum:]_]\+\(\.vim\)\@=' )
    if strlen(name) > 0
      cal setline(idx,name)
      let idx+=1
    endif
  endfor
  cal setline(idx,"== From User Vim Runtime ==")
  let idx+=1
  for file in files
    let name = matchstr( file , '[-[:alnum:]_]\+\(\.vim\)\@=' )
    if strlen(name) > 0
      cal setline(idx,name)
      let idx+=1
    endif
  endfor
endf

fun! s:updateList()
  setlocal modifiable
  let cur = getpos('.')
  silent 1,$ delete _
  cal s:renderList()
  setlocal nomodifiable
  cal setpos('.', cur )
  cal feedkeys("\r")
endf

fun! s:SelectColorS()
  30vnew
  setlocal bufhidden=wipe buftype=nofile nonu fdc=0
  file ColorSchemeSelector

  cal s:renderList()

  setlocal nomodifiable
  setlocal cursorline

  syn match ColorName +^[-[:alnum:]_]\+$+
  syn match Header    +^==.*+
  if exists( 'g:colors_name' )
    cal search( g:colors_name )
    exec 'syn match CurrentColor +' . g:colors_name . '+'
  endif
  normal zz

  hi CursorLine gui=reverse
  hi CursorName guifg=green
  hi CurrentColor guifg=black guibg=red
  hi link Header Function

  nmap <buffer>  <Enter>  :cal g:SetColor()<CR>
  nmap <buffer>  <C-q>    :q<CR>
  nmap <buffer>  e        :exec 'tabe $DOTVIM/colors/' . getline('.') . '.vim'<CR>
  nmap <buffer>  <C-n>    j<CR>
  nmap <buffer>  <C-p>    k<CR>
  nmap <buffer><script>  R      :cal <SID>fetchRandTheme()<CR>
  nmap <buffer><script>  <C-s>  :cal <SID>setupColorScheme( getline('.'),0)<CR>
  nmap <buffer><script>  ?      :cal <SID>help()<CR>
  nmap <silent><buffer><script>  D      :cal delete( expand( '$DOTVIM/colors/'.getline('.').'.vim'))<CR>:cal <SID>updateList()<CR>:echo "Deleted!"<CR>
endf

fun! s:help()
  echo "** ColorScheme Selector **"
  echo "  e    - edit"
  echo "  C-n  - apply next"
  echo "  C-p  - apply previous"
  echo "  R    - fetch new random scheme"
  echo "  D    - delete scheme"
  echo "  ?    - show help"
  echo "  C-s  - setup colorscheme"
endf


com! SelectColorS   :cal s:SelectColorS()
com! EditCurrentColorS :exec printf('tabe $DOTVIM/colors/%s.vim',colors_name)
com! RandCS cal s:fetchRandTheme()
