" Change prefix \ to space
let mapleader="\<Space>"

" Normal mode
" Move to begging / end of line
noremap                    <Leader>h ^
noremap                    <Leader>l $
" Move between display line
noremap                    j gj
noremap                    k gk
nnoremap                   <Space>w :w!<CR>
" Reset highlight by putting ESC
nmap                       <Esc><Esc> :nohlsearch<CR><Esc>
" Move between windows
nnoremap                   <Leader><Tab> <C-w>w
" Tab
nmap                       <C-t>n :tabnew<CR>
nmap                       <C-t>N :tabNext<CR>
nmap                       <C-t>p :tabprevious<CR>
" Move between tab
nnoremap                   <Leader>t gt
nnoremap                   <Leader>T gT
" Move between buffer
nnoremap                   <silent> <C-j> :bprev<CR>
nnoremap                   <silent> <C-k> :bnext<CR>
" Save and finish
nnoremap                   <Leader>w :w<CR>
nnoremap                   <Leader>q :q<CR>
if has('nvim')
  " Start terminal on new tab
	nnoremap @t :tabe<CR>:terminal<CR>
endif

" Insert mode
inoremap                   <silent> jj <ESC>
inoremap                   <silent> jjw <ESC>:w!<CR>
inoremap                   <silent> jjq <ESC>:wq!<CR>

" Terminal mode
if has('nvim')
  " Finish terminal by Ctrl + q
  tnoremap                 <C-q> <C-\><C-n>:q<CR>
  " Move to normal mode from terminal mode by ESC
  tnoremap                 <ESC> <C-\><C-n>
  " Move to normal mode from terminal mode by Ctrl + w
  tnoremap                 <C-w> <C-\><C-n>
  " Tab move in terminal mode
  tnoremap                 <C-l> <C-\><C-n>gt
  tnoremap                 <C-h> <C-\><C-n>gT
endif

"<F1> open help
nnoremap                   <F3> :set number! relativenumber!<CR>
nmap                       <F4> :set list! list?<CR>
nnoremap   <silent>        <F5>    :FloatermToggle<CR>
tnoremap   <silent>        <F5>    <C-\><C-n>:FloatermToggle<CR>
nnoremap   <silent>        <F6>    :FloatermNext<CR>
tnoremap   <silent>        <F6>    <C-\><C-n>:FloatermNext<CR>
nmap       <silent>        <F7> :CocCommand explorer --width 80<CR>
nmap                       <F8> :Vista<CR>
nmap                       <F9> :VenterToggle<CR>
autocmd FileType json nmap <F10> :%!python -m json.tool<cr>

nmap                       <Leader>bda :bd <C-a><CR>
nmap                       <Leader>bb :Buffers<CR>
nmap                       <Leader>nm :Dispatch npm start<CR>
nmap                       <Leader>nv :NV<CR>
nmap      <silent>         <Leader>p :call fzf#vim#files('', fzf#vim#with_preview({'options': '--prompt "λ -> "'}))<CR>
nmap                       <Leader>r :Rg<CR>
"nmap                       <Leader>tt :Rg TODO:<CR>
"nmap                       <Leader>l :Lines<CR>
"nmap                       <Leader>h :History<CR>
"nmap                       <Leader>tc :Colors<CR>
nmap                       <Leader>m :Marks<CR>
nmap                       <Leader>v :Vista finder<CR>
nmap       <silent>        <Leader>g :GFiles?<CR>
nmap                       <Leader>gv :GV<CR>
nmap                       <Leader>gg :FloatermNew lazygit<CR>
nmap                       <Leader>gf :20G<CR>
nmap                       <Leader>gi :GIssue<CR>
nmap       <silent>        <Leader>sp :set spell!<CR>
nmap       <silent>        <Leader>pr :FzfSwitchProject<CR>
nmap                       K <Plug>(devdocs-under-cursor)
nmap                       <C-F>f <Plug>CtrlSFPrompt
vmap                       <C-F>f <Plug>CtrlSFVwordExec
nmap                       <C-F>n <Plug>CtrlSFCwordExec
nnoremap                   <C-F>t :CtrlSFToggle<CR>
xmap                       ga <Plug>(EasyAlign)
nmap                       ga <Plug>(EasyAlign)
map                        f <Plug>Sneak_f
map                        F <Plug>Sneak_F
map                        t <Plug>Sneak_t
map                        T <Plug>Sneak_T
nnoremap   <silent>        <space>y  :<C-u>CocList -A --normal yank<cr>

nmap       <silent>        <Leader>x :Format<CR>
