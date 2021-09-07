" =============================================================================
" COLORSCHEME
" =============================================================================
if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

set background=dark

if g:colors_name == 'hybrid'
  colorscheme hybrid
  let g:airline_theme='molokai'
  " For list
  hi NonText ctermfg=16 guifg=#f51673
  hi SpecialKey ctermfg=16 guifg=#f516d0
  " Hybrid color for sneak
  hi Sneak gui=bold guifg=#1d2021 guibg=#f51673
  hi SneakScope  guifg=#1d2021 guibg=#f51673
  hi SneakLabelMask guifg=#f51673 guibg=#f51673
  " Hybrid floaterm
  hi FloatermBorder guifg=#83a598
endif

if g:colors_name == 'ayu'
  colorscheme ayu
  let ayucolor='dark' " available: light / dark / mirage
  let g:airline_theme = 'ayu_dark' " available: ayu_light / ayu_dark / ayu_mirage
endif

if g:colors_name == 'onedark'
  colorscheme onedark
  let g:airline_theme = 'onedark'
endif

if g:colors_name == 'gruvbox'
  colorscheme gruvbox
  set t_Co=256
  let g:gruvbox_italic=1
  let g:airline_theme = 'molokai'
  " For list
  hi NonText ctermfg=16 guifg=#FABD2F
  hi SpecialKey ctermfg=16 guifg=#FBCB8B
  "Gruvbox color for sneak
  hi Sneak gui=bold guifg=#1d2021 guibg=#FABD2F
  hi SneakScope  guifg=#1d2021 guibg=#FABD2F
  hi SneakLabelMask guifg=#FABD2F guibg=#FABD2F
  " Gruvbox floaterm
  hi FloatermBorder guifg=#83a598
endif

if g:colors_name == 'elly'
  colorscheme elly
  let g:airline_theme = 'elly'
endif

if g:colors_name == 'tokyonight'
  colorscheme tokyonight
  let g:tokyonight_style = 'night' " available: night / storm
  let g:tokyonight_enable_italic = 1
  let g:airline_theme= 'tokyonight'
endif

au ColorScheme * hi Normal ctermbg=none
au ColorScheme * hi MatchParen cterm=bold ctermfg=214 ctermbg=black
au Colorscheme * hi SpellBad ctermfg=23 cterm=none ctermbg=none

" Make background transparent for many things
"hi! Normal ctermbg=NONE guibg=NONE
"hi! NonText ctermbg=NONE guibg=NONE
"hi! LineNr ctermfg=NONE guibg=NONE
hi! SignColumn ctermfg=NONE guibg=NONE
hi! StatusLine guifg=NONE guibg=NONE
hi! StatusLineNC guifg=NONE guibg=NONE
" Try to hide vertical spit and end of buffer symbol
hi! VertSplit gui=NONE guifg=NONE guibg=NONE cterm=NONE
hi! EndOfBuffer ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
" Make background color transparent for git changes
hi! SignifySignAdd guibg=NONE
hi! SignifySignDelete guibg=NONE
hi! SignifySignChange guibg=NONE
hi CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
