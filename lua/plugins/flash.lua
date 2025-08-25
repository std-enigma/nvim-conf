---@type LazySpec
return {
	"folke/flash.nvim",
	event = "VeryLazy",
	config = true,
	specs = {
		{
			"catppuccin",
			optional = true,
			---@type CatppuccinOptions
			opts = { integrations = { flash = true } },
		},
	},
}
