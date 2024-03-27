local wezterm = require("wezterm")

local fonts = {
    require("fonts.firacode_nerd_font"),
    require("fonts.twitter_color_emoji"),
}

return {
    font_size = 16.0,
    animation_fps = 144,
    max_fps = 144,
    default_prog = {
        [[pwsh]]
    },
    font = wezterm.font_with_fallback(fonts),
}
