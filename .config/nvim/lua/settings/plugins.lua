-- Format on save
vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.format()]]

require'colorizer'.setup {
  ['*'] = {
    RGB      = true,
    RRGGBB   = true,
    names    = true,
    RRGGBBAA = true,
    rgb_fn   = true,
    hsl_fn   = true,
    css      = true,
    css_fn   = true,
    mode     = 'background', -- Available modes: foreground, background
  }
}

-- By default only these 3 are required
vim.api.nvim_set_var('coc_global_extensions', {'coc-json', 'coc-git', 'coc-markdownlint'} )

-- Add here all new, add them into the list if required
--  local current_extensions = vim.api.nvim_get_var('coc_global_extensions')
--  vim.list_extend(current_extensions, {'coc-perl', 'coc-java'})
--  vim.api.nvim_set_var('coc_global_extensions', current_extensions)


require'nvim-treesitter.configs'.setup {
	ensure_installed = { "json", "bash", "markdown", "lua", "gitcommit", "gitignore" },
	sync_install = true,
	auto_install = false,
	ignore_install = {},
	highlight = {
		enable = true,
		disable = { },
		disable = function(lang, buf)
			local max_filesize = 10000 * 1024 -- 1 GB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = false,
	},
	indent = { enabled = true },
}
