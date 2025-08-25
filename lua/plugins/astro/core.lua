---@type LazySpec
return {
	"AstroNvim/astrocore",
	---@type AstroCoreOpts
	opts = {
		-- AstroNvim features configuration
		features = {
			large_buf = { size = 1024 * 256, lines = 10000 }, -- set global limits for large files for disabling features like treesitter
			autopairs = true, -- enable autopairs at start
			cmp = true, -- enable completion at start
			diagnostics = { virtual_text = true, virtual_lines = false }, -- diagnostic settings on startup
			highlighturl = true, -- highlight URLs at start
			notifications = true, -- enable notifications at start
		},
		-- Diagnostics configuration (for vim.diagnostics.config({...})) when diagnostics are on
		diagnostics = {
			virtual_text = true,
			underline = true,
		},
		-- Vim options configuration
		options = {
			opt = { -- vim.opt.<key>
				relativenumber = true, -- sets vim.opt.relativenumber
				number = true, -- sets vim.opt.number
				spell = false, -- sets vim.opt.spell
				signcolumn = "yes", -- sets vim.opt.signcolumn to yes
				wrap = false, -- sets vim.opt.wrap
				guifont = { "JetBrainsMono Nerd Font" }, -- sets vim.opt.guifont
			},
		},
		-- Mappings configuration
		mappings = {
			n = {
				-- navigate buffer tabs
				L = {
					function()
						require("astrocore.buffer").nav(vim.v.count1)
					end,
					desc = "Next buffer",
				},
				H = {
					function()
						require("astrocore.buffer").nav(-vim.v.count1)
					end,
					desc = "Previous buffer",
				},
				-- disable the default home screen mapping
				["<Leader>h"] = false,
			},
		},
		-- AutoCmds configuration
		autocmds = {
			-- Hide the tabline when there's only one tab open
			autohidetabline = {
				{
					event = "User",
					pattern = "AstroBufsUpdated", -- triggered when vim.t.bufs is updated
					desc = "Hide tabline when only one buffer and one tab",
					callback = function()
						local new_showtabline = #vim.t.bufs > 1 and 2 or 1
						if new_showtabline ~= vim.opt.showtabline:get() then
							vim.opt.showtabline = new_showtabline
						end
					end,
				},
			},
			-- Setup terminals to use the powershell profile on Windows
			powershell_setup = {
				{
					once = true, -- Ensure it runs only once
					event = "VimEnter", -- This runs once when Neovim starts
					callback = function()
						-- Check if running on Windows
						if vim.fn.has("win32") == 1 or vim.fn.has("win64") == 1 then
							-- Set PowerShell options if on Windows
							local powershell_options = {
								shell = "pwsh",
								shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
								shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
								shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
								shellquote = "",
								shellxquote = "",
							}

							-- Apply each PowerShell option to Neovim
							for option, value in pairs(powershell_options) do
								vim.opt[option] = value
							end
						end
					end,
				},
			},
		},
	},
}
