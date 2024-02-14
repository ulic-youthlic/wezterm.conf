local wezterm = require('wezterm')

local fonts = {
    require("fonts.firacode_nerd_font"),
    require("fonts.noto_sans_cjk_sc"),
    require("fonts.noto_color_emoji"),
}

return {
    font_size = 14.0,
    animation_fps = 1,
    window_background_opacity = 0.9,
    text_background_opacity = 0.6,
    font = wezterm.font_with_fallback(fonts),
}
