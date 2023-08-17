require'colorizer'.setup {
  ['*'] = {
    RGB      = true,
    RRGGBB   = true,
    names    = true,
    RRGGBBAA = false,
    rgb_fn   = false,
    hsl_fn   = false,
    css      = false,
    css_fn   = false,
    mode     = 'background', -- Available modes: foreground, background
  }
}

require'nvim-treesitter.configs'.setup {
	ensure_installed = { },
	sync_install = true,
	auto_install = false,
	ignore_install = { },
	highlight = {
		enable = true,
		disable = { },
		disable = function(lang, buf)
			local max_filesize = 1000 * 1024 -- 1000 KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
		additional_vim_regex_highlighting = false,
	},
}
