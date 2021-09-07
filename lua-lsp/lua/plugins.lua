-- vim.cmd [[packadd packer.nvim]]
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
  execute 'packadd packer.nvim'
end

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- require('packer').init({display = {non_interactive = true}})
require('packer').init({display = {auto_clean = false}})

return require('packer').startup(function(use)
  -- Packer can manage itself as an optional plugin
  use 'wbthomason/packer.nvim'

  -- LSP
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind-nvim'

  -- Autocomplete
  use 'hrsh7th/nvim-compe'
  use 'SirVer/ultisnips'
  use 'honza/vim-snippets'
  use 'windwp/nvim-autopairs'
  use 'AndrewRadev/tagalong.vim'
  use 'andymass/vim-matchup'

  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
  use 'p00f/nvim-ts-rainbow'
  use 'lukas-reineke/indent-blankline.nvim'
  use 'JoosepAlviste/nvim-ts-context-commentstring'
  use 'romgrk/nvim-treesitter-context'

  -- Syntax
  use 'moll/vim-node'
  use 'zinit-zsh/zplugin-vim-syntax'
  use 'editorconfig/editorconfig-vim'
  use 'chrisbra/csv.vim'
  use 'npxbr/glow.nvim'
  use 'junegunn/vim-easy-align'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'

  -- Status Line and Bufferline
  use 'famiu/feline.nvim'
  use 'romgrk/barbar.nvim'

  -- Telescope
  use 'nvim-lua/popup.nvim'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-fzy-native.nvim'
  use 'nvim-telescope/telescope-project.nvim'
  use 'fhill2/telescope-ultisnips.nvim'
  use { 'pwntester/octo.nvim', requires = {{'nvim-lua/plenary.nvim'}, {'nvim-lua/popup.nvim'}} }

  -- Explorer
  use 'kyazdani42/nvim-tree.lua'

  -- Color
  use 'norcalli/nvim-colorizer.lua'

  -- Git
  use { 'lewis6991/gitsigns.nvim', requires = {'nvim-lua/plenary.nvim'} }
  use 'kdheepak/lazygit.nvim'
  use 'rhysd/committia.vim'
  use 'sindrets/diffview.nvim'

  -- Flutter
  use 'akinsho/flutter-tools.nvim'

  -- Registers
  use 'tversteeg/registers.nvim'

  -- Move & Search & replace
  use 'windwp/nvim-spectre'
  use 'nacro90/numb.nvim'
  use 'dyng/ctrlsf.vim'
  use 'kevinhwang91/nvim-hlslens'
  use 'ggandor/lightspeed.nvim'
  use 'kshenoy/vim-signature'
  use 'karb94/neoscroll.nvim'
  use 'dstein64/nvim-scrollview'
  use 'chaoren/vim-wordmotion'

  -- Tim Pope docet
  use 'tpope/vim-sensible'
  use 'tpope/vim-rails'
  use 'tpope/vim-abolish'
  use 'tpope/vim-surround'
  use 'tpope/vim-bundler'
  use 'tpope/vim-capslock'
  use 'tpope/vim-repeat'
  use 'tpope/vim-endwise'
  use 'tpope/vim-rvm'
  use 'tpope/vim-dispatch'
  use 'tpope/vim-dadbod'
  use 'tpope/vim-jdaddy'
  use 'tpope/vim-fugitive'
  use 'tpope/vim-commentary'

  -- Tmux
  use 'christoomey/vim-tmux-navigator'

  -- Colorschema
  use 'sainnhe/gruvbox-material'
  use 'sainnhe/sonokai'

  -- Tags
  use 'ludovicchabant/vim-gutentags'

  -- General Plugins
  use 'airblade/vim-rooter'
  use 'mhinz/vim-startify'
  use 'jeffkreeftmeijer/vim-numbertoggle'
  use 'lambdalisue/suda.vim'
  use 'numtostr/FTerm.nvim'
  use 'wfxr/minimap.vim'
  use 'folke/todo-comments.nvim'
end)
