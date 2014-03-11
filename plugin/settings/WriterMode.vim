" toggle between working mode and writter mode
" font size change only work for GUI-version Vim

function! WriterModeOn()

  if has("gui_macvim")
    colorscheme default
    set background=light
    set showtabline=1
    set nonu
    set laststatus=0
    hi FoldColumn guibg=white
    set foldcolumn=10
    set linespace=8
    set guifont=Source\ Code\ Pro\ Light:h20
    "set tw=80
    hi Normal guibg=gray95
    hi NonText guifg=gray95
    hi FoldColumn guibg=gray95
    hi CursorLine guibg=gray90
    hi Title gui=bold guifg=gray25
    hi MarkdownHeadingDelimiter gui=bold guifg=gray25
    hi htmlSpecialChar guifg=black
    hi markdownBold gui=bold guifg=gray25
    hi markdownItalic guifg=gray25 gui=underline
    hi markdownUrl guifg=#2fb3a6
    hi markdownAutomaticLink guifg=#2fb3a6
    hi markdownLinkText guifg=#317849
    hi markdownUrlTitle guifg=#317849
    hi markdownBlockquote guifg=#317849 gui=bold
    hi markdownId guifg=#2fb3a6
    hi markdownIdDeclaration guifg=#317849 gui=bold
    hi markdownListMarker guifg=#317849
    highlight Cursor guibg=#15abdd
  end

endfunction

function! WriterModeOff()
  colorscheme railscasts
  set showtabline=2

  if has("gui_macvim")
    set guifont=Monaco:h17           " for Mac
  elseif has("gui_gtk")
    set guifont=Monospace\ 14        " for ubuntu
  end
endfunction

function! ToggleWriterMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call WriterModeOn()
    let w:present=1
  else
    call WriterModeOff()
    let w:present=0
  endif
endfunction

map <leader>W :call ToggleWriterMode()<CR>
