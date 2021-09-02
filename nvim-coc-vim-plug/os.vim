" =============================================================================
" CHECK OS
" =============================================================================
if has('unix')
  let s:uname = system("uname")
  if s:uname == "Darwin\n"
    " Do Mac stuff here
    set guifont=FuraCode\ Nerd\ Font\ Mono\:h11
  else
    set guifont=FuraCode\ Nerd\ Font\ Mono\ 8
  endif
elseif has('win32') || has('win64')
  behave mswin
  set guifont=Hack\:9
  au GUIEnter * simalt ~n
endif

