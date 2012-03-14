" toggle between working mode and presentation mode
" borrowed from skalnik(https://github.com/skalnik)
function! PresentationModeOn()
  colorscheme github
  set guifont=Monaco:h25                 " work for GUI-Vim only
endfunction

function! PresentationModeOff()
  colorscheme rails_envy
  set guifont=Monaco:h17                 " work for GUI-Vim only
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present=0
  endif

  if w:present==0
    call PresentationModeOn()
    let w:present=1
  else
    call PresentationModeOff()
    let w:present=0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>
