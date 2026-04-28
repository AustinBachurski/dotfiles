local wezterm = require("wezterm")
local config = wezterm.config_builder()

local border_thickness              = "0.1cell"
local border_color                  = "silver"

config.check_for_updates            = false
config.enable_scroll_bar            = true
config.enable_tab_bar               = false
config.enable_wayland               = false
config.font_size                    = 14
config.max_fps                      = 165
config.window_close_confirmation    = "NeverPrompt"
config.window_background_opacity    = .8
config.window_decorations           = "RESIZE"
config.window_frame = {
    border_left_width               = border_thickness,
    border_right_width              = border_thickness,
    border_bottom_height            = border_thickness,
    border_top_height               = border_thickness,
    border_left_color               = border_color,
    border_right_color              = border_color,
    border_bottom_color             = border_color,
    border_top_color                = border_color,
}

return config

