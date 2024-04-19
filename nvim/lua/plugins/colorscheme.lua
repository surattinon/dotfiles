return {
	--  {
	-- 	"craftzdog/solarized-osaka.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- 	opts = function()
	-- 		return {
	-- 			transparent = false,
	-- 		}
	-- 	end,
	-- },
	-- {
	-- 	"Tsuzat/NeoSolarized.nvim",
	-- 	lazy = false, -- make sure we load this during startup if it is your main colorscheme
	-- 	priority = 1000, -- make sure to load this before all the other start plugins
	-- 	config = function()
	-- 		vim.cmd([[ colorscheme NeoSolarized ]])
	-- 	end,
	-- },
	-- {
	-- 	"folke/tokyonight.nvim",
	-- 	lazy = true,
	-- 	priority = 1000,
	--    opts = function()
	--        return {
	--          style = "night",
	--          transparent = true,
	--          tokyonighy_dark_float = false,
	--        }
	--    end,
	-- },
	-- {
	-- 	"bluz71/vim-moonfly-colors",
	-- 	name = "moonfly",
	-- 	lazy = false,
	-- 	priority = 1000,
	-- 	config = function()
	-- 		vim.g.moonflyTransparent = true
	-- 		vim.g.moonflyVirtualTextColor = true
	-- 	end,
	-- },
	-- {
	-- 	"bluz71/vim-nightfly-colors",
	-- 	name = "nightfly",
	-- 	lazy = true,
	-- 	priority = 1000,
	-- },
	-- {
	-- 	"catppuccin/nvim",
	-- 	name = "catppuccin",
	-- 	priority = 1000,
	-- 	opts = {
	-- 		transparent_background = true,
	-- 	},
	-- },
  {
    "sainnhe/sonokai",
    priority = 1000,
    config = function()
      vim.g.sonokai_transparent_background = "1"
      vim.g.sonokai_enable_italic = "1"
      vim.g.sonokai_style = "andromeda"
      vim.cmd("colorscheme sonokai")
    end,
  }
}
