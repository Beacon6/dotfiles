-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.color_scheme = 'Catppuccin Mocha'

config.initial_cols = 120
config.initial_rows = 30

config.enable_scroll_bar = false
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0,
}

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true

config.use_resize_increments = true

-- Return the configuration to wezterm
return config
