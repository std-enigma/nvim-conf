---@diagnostic disable: assign-type-mismatch
local short_prefix = "<Leader>"
local prefix = "<Leader><Leader>"

--e@type LazySpec
return {
	"smoka7/hop.nvim",
	config = true,
	dependencies = {
		"AstroNvim/astrocore",
		opts = {
			mappings = {
				[""] = {
					f = {
						function()
							local directions = require("hop.hint").HintDirection
							require("hop").hint_char1({
								direction = directions.AFTER_CURSOR,
								current_line_only = true,
							})
						end,
					},
					F = {
						function()
							local directions = require("hop.hint").HintDirection
							require("hop").hint_char1({
								direction = directions.BEFORE_CURSOR,
								current_line_only = true,
							})
						end,
					},
					t = {
						function()
							local directions = require("hop.hint").HintDirection
							require("hop").hint_char1({
								direction = directions.AFTER_CURSOR,
								current_line_only = true,
								hint_offset = -1,
							})
						end,
					},
					T = {
						function()
							local directions = require("hop.hint").HintDirection
							require("hop").hint_char1({
								direction = directions.BEFORE_CURSOR,
								current_line_only = true,
								hint_offset = 1,
							})
						end,
					},
				},
				n = {
					[prefix] = { desc = "Hop " },
					[prefix .. "w"] = {
						function()
							require("hop").hint_words({ multi_windows = true, direction = nil })
						end,
						desc = "Hint words (start)",
					},
					[prefix .. "W"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_words({
								hint_position = positions.END,
								multi_windows = true,
								direction = nil,
							})
						end,
						desc = "Hint words (end)",
					},
					[prefix .. "c"] = {
						function()
							require("hop").hint_camel_case({ multi_windows = true, direction = nil })
						end,
						desc = "Hint CamelCase (start)",
					},
					[prefix .. "C"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_camel_case({
								hint_position = positions.END,
								multi_windows = true,
								direction = nil,
							})
						end,
						desc = "Hint CamelCase (end)",
					},
					[prefix .. "l"] = {
						function()
							require("hop").hint_lines_skip_whitespace({ multi_windows = true, direction = nil })
						end,
						desc = "Hint lines",
					},
					[prefix .. "v"] = {
						function()
							require("hop").hint_vertical({ multi_windows = true, direction = nil })
						end,
						desc = "Hint vertical",
					},
					[prefix .. "n"] = {
						function()
							require("hop-treesitter").hint_nodes({ direction = nil })
						end,
						desc = "Hint treesitter nodes",
					},
					[prefix .. "y"] = {
						function()
							require("hop-yank").yank_char1({ direction = nil })
						end,
						desc = "Yank",
					},
					[prefix .. "p"] = {
						function()
							require("hop-yank").paste_char1({ multi_windows = true, direction = nil })
						end,
						desc = "Paste",
					},
					[prefix .. "/"] = {
						function()
							require("hop").hint_patterns({ multi_windows = true, direction = nil })
						end,
						desc = "Hint patterns",
					},
				},
				x = {
					[prefix] = { desc = "Hop " },
					[prefix .. "w"] = {
						function()
							require("hop").hint_words({ direction = nil })
						end,
						desc = "Hint words (start)",
					},
					[prefix .. "W"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_words({ hint_position = positions.END, direction = nil })
						end,
						desc = "Hint words (end)",
					},
					[prefix .. "c"] = {
						function()
							require("hop").hint_camel_case({ direction = nil })
						end,
						desc = "Hint CamelCase (start)",
					},
					[prefix .. "C"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_camel_case({ hint_position = positions.END, direction = nil })
						end,
						desc = "Hint CamelCase (end)",
					},
					[prefix .. "l"] = {
						function()
							require("hop").hint_lines_skip_whitespace({ direction = nil })
						end,
						desc = "Hint lines",
					},
					[prefix .. "v"] = {
						function()
							require("hop").hint_vertical({ direction = nil })
						end,
						desc = "Hint vertical",
					},
					[prefix .. "n"] = {
						function()
							require("hop-treesitter").hint_nodes({ direction = nil })
						end,
						desc = "Hint treesitter nodes",
					},
					[prefix .. "/"] = {
						function()
							require("hop").hint_patterns({ direction = nil })
						end,
						desc = "Hint patterns",
					},
				},
				o = {
					[short_prefix] = { desc = "Hop " },
					[prefix .. "w"] = {
						function()
							require("hop").hint_words({ direction = nil })
						end,
						desc = "Hint words (start)",
					},
					[prefix .. "W"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_words({ hint_position = positions.END, direction = nil })
						end,
						desc = "Hint words (end)",
					},
					[prefix .. "c"] = {
						function()
							require("hop").hint_camel_case({ direction = nil })
						end,
						desc = "Hint CamelCase (start)",
					},
					[prefix .. "C"] = {
						function()
							local positions = require("hop.hint").HintPosition
							require("hop").hint_camel_case({ hint_position = positions.END, direction = nil })
						end,
						desc = "Hint CamelCase (end)",
					},
					[short_prefix .. "l"] = {
						function()
							require("hop").hint_lines_skip_whitespace({ direction = nil })
						end,
						desc = "Hint lines",
					},
					[short_prefix .. "v"] = {
						function()
							require("hop").hint_vertical({ direction = nil })
						end,
						desc = "Hint vertical",
					},
					[short_prefix .. "n"] = {
						function()
							require("hop-treesitter").hint_nodes({ direction = nil })
						end,
						desc = "Hint treesitter nodes",
					},
					[short_prefix .. "/"] = {
						function()
							require("hop").hint_patterns({ direction = nil })
						end,
						desc = "Hint patterns",
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
			opts = { integrations = { hop = true } },
		},
	},
}
