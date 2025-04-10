local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {}
config.colors.cursor_bg = "#f8fe7a"
config.color_scheme = "Catppuccin Macchiato"

config.font = wezterm.font("Iosevka Term Extended")
config.font_size = 16.0

return config
