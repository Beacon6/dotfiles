local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.colors = {}
config.color_scheme = "Catppuccin Mocha"

config.font_size = 16.0

config.enable_scroll_bar = false

config.use_fancy_tab_bar = false

config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }

config.freetype_load_target = "Light"

config.warn_about_missing_glyphs = false

return config
