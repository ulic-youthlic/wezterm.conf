local wezterm = require("wezterm")

return {
  automatically_reload_config = true,
  cell_width = 1.0,
  audible_bell = "Disabled",
  tab_bar_at_bottom = true,
  use_fancy_tab_bar = false,
  hide_tab_bar_if_only_one_tab = true,
  window_decorations = "RESIZE|TITLE",
  underline_thickness = 3.0,
  enable_scroll_bar = true,
  color_scheme = "MaterialOcean",
  window_background_image = wezterm.config_dir .. [[/background/background.png]],
  window_background_image_hsb = {
    brightness = 0.02,
    hue = 1.0,
    saturation = 1.0,
  },
  window_padding = {
    left = "0.5cell",
    right = 0,
    top = "0cell",
    bottom = "0cell",
  },
  window_background_opacity = 0.9,
  text_background_opacity = 0.6,
}
