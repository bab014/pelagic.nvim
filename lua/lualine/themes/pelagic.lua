local colors = require("pelagic.colors")

local pelagic = {}

pelagic.normal = {
	a = { fg = colors.pelagic1_gui, bg = colors.pelagic9_gui },
	b = { fg = colors.pelagic5_gui, bg = colors.pelagic2_gui },
	c = { fg = colors.pelagic4_gui, bg = colors.pelagic1_gui },
}

pelagic.insert = {
	a = { fg = colors.pelagic1_gui, bg = colors.pelagic4_gui },
	b = { fg = colors.pelagic6_gui, bg = colors.pelagic2_gui },
	y = {  fg = colors.pelagic5_gui, bg = colors.pelagic2_gui },
}

pelagic.visual = {
	a = { fg = colors.pelagic0_gui, bg = colors.pelagic7_gui },
	b = { fg = colors.pelagic4_gui, bg = colors.pelagic2_gui },
	y = {  fg = colors.pelagic5_gui, bg = colors.pelagic2_gui },
}

pelagic.replace = {
	a = { fg = colors.pelagic0_gui, bg = colors.pelagic11_gui },
	b = { fg = colors.pelagic4_gui, bg = colors.pelagic2_gui },
	y = {  fg = colors.pelagic5_gui, bg = colors.pelagic2_gui },
}

pelagic.command = {
	a = { fg = colors.pelagic0_gui, bg = colors.pelagic15_gui, gui = "bold" },
	b = { fg = colors.pelagic4_gui, bg = colors.pelagic2_gui },
	y = {  fg = colors.pelagic5_gui, bg = colors.pelagic2_gui },
}

pelagic.inactive = {
	a = { fg = colors.pelagic4_gui, bg = colors.pelagic0_gui, gui = "bold" },
	b = { fg = colors.pelagic4_gui, bg = colors.pelagic0_gui },
	c = { fg = colors.pelagic4_gui, bg = colors.pelagic1_gui },
}

return pelagic
