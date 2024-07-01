local wezterm = require("wezterm")
local act = wezterm.action

local config = {}

config.font = wezterm.font("JetBrains Mono", { weight = "Bold" })
config.font_size = 14.0
config.color_scheme = "MaterialDarker"

config.window_background_opacity = 0.75
config.foreground_text_hsb = {
	hue = 1.0,
	saturation = 1.0,
	brightness = 2.0,
}

return config
