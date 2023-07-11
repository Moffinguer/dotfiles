" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent sh -c 'curl -fLo ~/.config/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim';
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

set nocompatible
call plug#begin('~/.config/nvim/autoload/plugged')

	" Tab
	Plug 'ervandew/supertab'

	" Whitespaces
	Plug 'vim-scripts/bad-whitespace'
	Plug 'vim-scripts/Trailer-Trash'

	" Autoindent
	Plug 'ciaranm/detectindent'

	" Auto Pairing
	Plug 'jiangmiao/auto-pairs'

	" Themes
	Plug 'fxn/vim-monochrome'
	Plug 'andreasvc/vim-256noir'

	" Bar
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Icons
	Plug 'kyazdani42/nvim-web-devicons'

	" Comments
	Plug 'preservim/nerdcommenter'

	" Git
	Plug 'airblade/vim-gitgutter'

	" Sneak
	Plug 'justinmk/vim-sneak'

	" CSS Color show
	Plug 'norcalli/nvim-colorizer.lua'

	" LSP
	Plug 'neovim/nvim-lspconfig'
	Plug 'mfussenegger/nvim-jdtls'
	Plug 'hrsh7th/nvim-cmp'
	Plug 'hrsh7th/cmp-nvim-lsp'
	Plug 'saadparwaiz1/cmp_luasnip'
	Plug 'L3MON4D3/LuaSnip'

	" TreeSitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

	" Finder
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

call plug#end()

