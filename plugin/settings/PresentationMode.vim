function! PresentationModeOn()
  colorscheme github
  set bg=light

  set guifont=Monaco:h25
endfunction

function! PresentationModeOff()
  colorscheme rails_envy
  set bg=dark

  set guifont=Monaco:h17
endfunction

function! TogglePresentationMode()
  if !exists('w:present')
    let w:present = 0
  endif

  if w:present == 0
    call PresentationModeOn()
    let w:present = 1
  else
    call PresentationModeOff()
    let w:present = 0
  endif
endfunction

map <leader>z :call TogglePresentationMode()<CR>
