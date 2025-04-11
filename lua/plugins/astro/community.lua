---@type LazySpec
return {
	"AstroNvim/astrocommunity",

	-- Add lua language pack
	{ import = "astrocommunity.pack.lua" },

	-- Extend and create a/i textobjects
	{ import = "astrocommunity.motion.mini-ai" },

	-- Configure nvim for vscode usage
	{ import = "astrocommunity.recipes.vscode" },

	-- Discord rich presence for neovim
	{ import = "astrocommunity.media.cord-nvim" },

	-- Configure nvim for neovide usage
	{ import = "astrocommunity.recipes.neovide" },

	-- Easily move selections in any direction
	{ import = "astrocommunity.motion.mini-move" },

	-- Better UI functionality
	{ import = "astrocommunity.utility.noice-nvim" },

	-- Better % navigation
	{ import = "astrocommunity.motion.vim-matchup" },

	-- Better w/e/b navigation
	{ import = "astrocommunity.motion.nvim-spider" },

	-- Tab out from parentheses, quotes, and similar contexts
	{ import = "astrocommunity.motion.tabout-nvim" },

	-- Take pretty screenshots of your code
	{ import = "astrocommunity.media.codesnap-nvim" },

	-- Better lsp renaming functionality
	{ import = "astrocommunity.lsp.inc-rename-nvim" },

	-- Add/change/delete surrounding delimiter pairs
	{ import = "astrocommunity.motion.nvim-surround" },

	-- Easy find and replace
	{ import = "astrocommunity.search.grug-far-nvim" },

	-- Change the looks of the default icons
	{ import = "astrocommunity.recipes.vscode-icons" },

	-- Better lsp signatures
	{ import = "astrocommunity.lsp.lsp-signature-nvim" },

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

	-- Code chunk highlighting
	{ import = "astrocommunity.indent.snacks-indent-hlchunk" },

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
