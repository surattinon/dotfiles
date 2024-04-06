return {
	-- {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	opts = function()
	-- 		return {
	-- 			transparent = true,
	-- 		}
	-- 	end,
	-- },
	{
		"Tsuzat/NeoSolarized.nvim",
		lazy = true, -- make sure we load this during startup if it is your main colorscheme
		priority = 1000, -- make sure to load this before all the other start plugins
		config = function()
			vim.cmd([[ colorscheme NeoSolarized ]])
		end,
	},
}
