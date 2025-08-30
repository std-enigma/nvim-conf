---@type LazySpec
return {
	"folke/flash.nvim",
	event = "VeryLazy",
	---@type Flash.Config
	opts = {
		modes = {
			search = {
				enabled = true,
				highlight = { backdrop = true },
			},
			char = {
				jump_labels = true,
				multi_line = false,
				jump = { autojump = true },
				highlight = { backdrop = false },
			},
		},
	},
	dependencies = {
		"AstroNvim/astrocore",
		opts = {
			mappings = {
				n = {
					s = {
						function()
							require("flash").jump()
						end,
						desc = "Flash Jump",
					},
					S = {
						function()
							require("flash").treesitter()
						end,
						desc = "Flash Treesitter",
					},
				},
				x = {
					s = {
						function()
							require("flash").jump()
						end,
						desc = "Flash Jump",
					},
					S = {
						function()
							require("flash").treesitter()
						end,
						desc = "Flash Treesitter",
					},
					R = {
						function()
							require("flash").treesitter_search()
						end,
						desc = "Flash Treesitter Search",
					},
				},
				o = {
					s = {
						function()
							require("flash").jump()
						end,
						desc = "Flash Jump",
					},
					S = {
						function()
							require("flash").treesitter()
						end,
						desc = "Flash Treesitter",
					},
					r = {
						function()
							require("flash").remote()
						end,
						desc = "Flash Remote",
					},
					R = {
						function()
							require("flash").treesitter_search()
						end,
						desc = "Flash Treesitter Search",
					},
				},
				c = {
					["<C-s>"] = {
						function()
							require("flash").toggle()
						end,
						desc = "Toggle Flash Search",
					},
				},
			},
		},
	},
	specs = {
		{
			"catppuccin",
			optional = true,
			---@type CatppuccinOptions
			opts = { integrations = { flash = true } },
		},
	},
}
