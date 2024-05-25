--- Style
vim.cmd( "let g:airline_powerline_fonts = 1")
vim.cmd( 'colorscheme moonfly' )
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.encoding = "UTF-8"
vim.opt.foldcolumn = "0"

-- Clipboard
vim.opt.clipboard = "unnamedplus"

--- Some servers have issues with backup files
vim.cmd( 'syntax on' )
vim.opt.backup = false
vim.opt.writebackup = false

--- Update time
vim.opt.updatetime = 300

--- Signcolumn
vim.opt.signcolumn = "no"

--- 256 Colors
vim.cmd( 'set t_Co=256' )
vim.cmd( 'set t_AB=^[[48;5;%dm' )
vim.cmd( 'set t_AF=^[[38;5;%dm' )
-- Change highlighting of cursor line when entering/leaving Insert Mode
vim.cmd( 'set cursorline')
vim.cmd( 'highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212')
vim.cmd( 'autocmd InsertEnter * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=234 guifg=NONE guibg=#1c1c1c')
vim.cmd( 'autocmd InsertLeave * highlight CursorLine cterm=NONE ctermfg=NONE ctermbg=233 guifg=NONE guibg=#121212')

-- Lightline
vim.cmd( "let g:airline_theme='wombat'" )
