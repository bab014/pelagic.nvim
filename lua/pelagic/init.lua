-- Colorscheme name:    pelagic.nvim
-- Description:         Blueish theme inspired by the open and deep ocean
-- Author:              https://github.com/bab014

local util = require("pelagic.util")

local bufferline = require("bufferline.theme")

-- Load the theme
local set = function()
	util.load()
end

return { set = set, bufferline = bufferline }
