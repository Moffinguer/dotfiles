" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

set nocompatible
call plug#begin('~/.config/nvim/autoload/plugged')
	Plug 'vim-scripts/bad-whitespace'
	Plug 'vim-scripts/Trailer-Trash'
	Plug 'jiangmiao/auto-pairs'
	Plug 'bluz71/vim-moonfly-colors', { 'as': 'moonfly' }
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'airblade/vim-gitgutter'
	Plug 'justinmk/vim-sneak'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

