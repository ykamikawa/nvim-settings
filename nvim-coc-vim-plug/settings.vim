" =============================================================================
" SETTINGS
" =============================================================================
set fileformats=unix,dos,mac
set spelllang=en_us,nl,medical,it
" View file name
set ambiwidth=double
set title
" Add number to column
set number
set signcolumn=auto
" Return row
set wrap
" View ruler
set ruler
" no backup file
set nobackup
set backupcopy=yes
" no swap file
set noswapfile
set nowritebackup
" no auto save on buffer switch
set noautowrite
" no undo files
set noundofile
" Confirm unsaved file
set confirm
" Autoread, if file is chenged
set autoread
" Open hidden file
set hidden
" Display command on status
set showcmd
" short mess
set shortmess+=c
set shortmess-=S
" Don't dispay mode in command line
set noshowmode
" Display tabline always
set showtabline=2
set softtabstop=2
" Open all folds by default
set nofoldenable
" Do not use errorbells
set noerrorbells
" Two spaces after a period on join
set nojoinspaces
" mouse
set mouse=a
" Emphasis match
set showmatch
" Use back space to delete
set backspace=indent,eol,start
" wild menu
set wildmenu
set wildmode=list:longest,full
" Display status bar always
set laststatus=2
" Display unvisible char
set list
set listchars=tab:>.,trail:･,extends:>,precedes:<,nbsp:%
" Change tab to space
set expandtab
" Highlight ZenkakuSpace
function! ZenkakuSpace()
  highlight ZenkakuSpace cterm=reverse ctermfg=DarkMagenta gui=reverse guifg=DarkMagenta
endfunction
" Tab space
set tabstop=2
" Tab width
set shiftwidth=2
" Keep indent
set autoindent
" Open vertical splits to the right
set splitright
" Open horizontal splits to the bottom
set splitbelow
" Fold method
set foldmethod=indent
set foldlevel=1
set foldnestmax=10
" n of changes that can be undone
set undolevels=1000
set lazyredraw
"set nolist listchars=tab:▸\ ,trail:·,precedes:←,extends:→,eol:↲,nbsp:␣
  
" Cursor
" Share clipboard with other apps
set clipboard+=unnamedplus
" Add one virtual char
set virtualedit=onemore
set whichwrap=b,s,[,],<,>
" Emphasis line
set cursorline
" Emphasis column
set cursorcolumn
" Set offset to cursor row
set scrolloff=4
" Row after cursor
set so=10
" Set cursor position
au WinLeave * set nocursorcolumn
au WinEnter * set cursorcolumn

" Search
" Dont distinguish, if search word is lowercase
set ignorecase
" Distinguish uppercase and lowercase
set smartcase
" Wrap word
set incsearch
set wrapscan
" Highlight results
set hlsearch
set pumblend=30
" jump to the last known cursor position
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
