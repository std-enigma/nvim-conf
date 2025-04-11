---@type LazySpec
return {
	"AstroNvim/astrocommunity",

	-- Add lua language pack
	{ import = "astrocommunity.pack.lua" },

	-- Configure nvim for vscode usage
	{ import = "astrocommunity.recipes.vscode" },

	-- Configure nvim for neovide usage
	{ import = "astrocommunity.recipes.neovide" },

	-- Better UI functionality
	{ import = "astrocommunity.utility.noice-nvim" },

	-- Better % navigation
	{ import = "astrocommunity.motion.vim-matchup" },

	-- Tab out from parentheses, quotes, and similar contexts
	{ import = "astrocommunity.motion.tabout-nvim" },

	-- Better lsp renaming functionality
	{ import = "astrocommunity.lsp.inc-rename-nvim" },

	-- Easy find and replace
	{ import = "astrocommunity.search.grug-far-nvim" },

	-- Change the looks of the default icons
	{ import = "astrocommunity.recipes.vscode-icons" },

	-- Smooth window scrolling
	{ import = "astrocommunity.scrolling.vim-smoothie" },

	-- Another cool file explorer
	{ import = "astrocommunity.file-explorer.oil-nvim" },

	-- Better diagnostics + quickfix and location list
	{ import = "astrocommunity.diagnostics.trouble-nvim" },

	-- Cache and setup the last used colorscheme
	{ import = "astrocommunity.recipes.cache-colorscheme" },

	-- Change the looks of the snacks.nvim picker
	{ import = "astrocommunity.recipes.picker-nvchad-theme" },

	-- Use snacks.nvim for some lsp mappings
	{ import = "astrocommunity.recipes.picker-lsp-mappings" },

	-- Automatic split window management
	{ import = "astrocommunity.split-and-window.windows-nvim" },

	-- Change the looks of heirline.nvim winbar
	{ import = "astrocommunity.recipes.heirline-vscode-winbar" },

	-- Locks some buffers and make them stick
	{ import = "astrocommunity.editing-support.stickybuf-nvim" },

	-- Change the looks of heirline.nvim statusline
	{ import = "astrocommunity.recipes.heirline-nvchad-statusline" },

	-- Make nvim split separators colorful with smooth animations
	{ import = "astrocommunity.split-and-window.colorful-winsep-nvim" },
}
