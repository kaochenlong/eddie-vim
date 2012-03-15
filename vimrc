call pathogen#runtime_append_all_bundles()
call pathogen#infect()
call pathogen#helptags()

" force myself to not to use the error keys
map <UP> <NOP>
map <DOWN> <NOP>
map <LEFT> <NOP>
map <RIGHT> <NOP>

" cancel searched highlight
noremap <CR> :nohlsearch<CR>
