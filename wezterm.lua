local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.automatically_reload_config = true
config.cell_width = 1.0
config.line_height = 1.05
config.audible_bell = "Disabled"
config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_decorations = "RESIZE|TITLE"
config.underline_thickness = 3.0
config.enable_scroll_bar = true
config.color_scheme = "MaterialOcean"
config.window_background_image_hsb = {
    brightness = 0.02,
    hue = 1.0,
    saturation = 1.0,
}
config.text_background_opacity = 0.6


return config
