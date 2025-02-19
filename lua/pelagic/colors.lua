local named_colors = require("pelagic.named_colors")

local dark_colors = {
	pelagic0_gui = named_colors.black,
	pelagic1_gui = named_colors.dark_gray,
	pelagic2_gui = named_colors.gray,
	pelagic3_gui = named_colors.light_gray,
	pelagic3_gui_bright = named_colors.light_gray_bright,
	pelagic4_gui = named_colors.darkest_white,
	pelagic5_gui = named_colors.darker_white,
	pelagic6_gui = named_colors.white,
	pelagic7_gui = named_colors.teal,
	pelagic8_gui = named_colors.off_blue,
	pelagic9_gui = named_colors.glacier,
	pelagic10_gui = named_colors.blue,
	pelagic11_gui = named_colors.red,
	pelagic12_gui = named_colors.orange,
	pelagic13_gui = named_colors.yellow,
	pelagic14_gui = named_colors.green,
	pelagic15_gui = named_colors.purple,
	none = "NONE",
}

local light_colors = {
	pelagic0_gui = named_colors.white,
	pelagic1_gui = named_colors.darker_white,
	pelagic2_gui = named_colors.darkest_white,
	pelagic3_gui = named_colors.light_gray,
	pelagic3_gui_bright = named_colors.light_gray_bright,
	pelagic4_gui = named_colors.gray,
	pelagic5_gui = named_colors.dark_gray,
	pelagic6_gui = named_colors.black,

	-- Same colors across light and dark from here down...
	pelagic7_gui = named_colors.teal,
	pelagic8_gui = named_colors.off_blue,
	pelagic9_gui = named_colors.glacier,
	pelagic10_gui = named_colors.blue,
	pelagic11_gui = named_colors.red,
	pelagic12_gui = named_colors.orange,
	pelagic13_gui = named_colors.yellow,
	pelagic14_gui = named_colors.green,
	pelagic15_gui = named_colors.purple,
	none = "NONE",
}

local pelagic = (vim.o.background == "dark") and dark_colors or light_colors

-- Enable contrast sidebars, floating windows and popup menus
if vim.g.pelagic_contrast then
	pelagic.sidebar = pelagic.pelagic1_gui
	pelagic.float = pelagic.pelagic1_gui
else
	pelagic.sidebar = pelagic.pelagic0_gui
	pelagic.float = pelagic.pelagic0_gui
end

if vim.g.pelagic_cursorline_transparent then
	pelagic.cursorlinefg = pelagic.pelagic0_gui
else
	pelagic.cursorlinefg = pelagic.pelagic1_gui
end

return pelagic
