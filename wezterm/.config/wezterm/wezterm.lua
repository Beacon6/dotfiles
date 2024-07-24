local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = 'Catppuccin Mocha'

config.initial_cols = 160
config.initial_rows = 40

config.enable_scroll_bar = false

config.use_fancy_tab_bar = false

return config
