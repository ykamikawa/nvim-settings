" =============================================================================
" FILETYPE
" =============================================================================
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd BufNewFile,BufRead /tmp/mutt-* set filetype=mail
autocmd BufNewFile,BufRead /*.rasi setf css
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif
" autocmd BufRead,BufNewFile *.md setlocal spell
