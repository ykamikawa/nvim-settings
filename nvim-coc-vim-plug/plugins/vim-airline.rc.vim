" Powerline
let g:airline_powerline_fonts = 1
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1
let g:airline#extensions#tabline#show_tab_type = 1
let g:airline#extensions#tabline#show_close_button = 1
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
" gitのHEADから変更した行の+-を非表示
" let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
