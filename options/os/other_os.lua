local wezterm = require('wezterm')

local fonts = {
    require("fonts.firacode_nerd_font"),
    require("fonts.noto_sans_cjk_sc"),
    require("fonts.noto_color_emoji"),
}

return {
    term = "wezterm",
    font_size = 14.0,
    animation_fps = 1,
    font = wezterm.font_with_fallback(fonts),
}
