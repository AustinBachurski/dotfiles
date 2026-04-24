local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.check_for_updated            = false
config.enable_scroll_bar            = true
config.enable_tab_bar               = false
config.enable_wayland               = false
config.max_fps                      = 165
config.window_close_confirmation    = "NeverPrompt"
config.window_decorations           = "RESIZE"

return config

