local wezterm = require("wezterm")
local is_windows = require("fn").is_windows

local fonts = {
    {
        family = [[FiraCode Nerd Font]],
        weight = [[Thin]],
        assume_emoji_presentation = false,
        harfbuzz_features = {
            "calt=1",
            "clig=1",
            "liga=1",
            "cv01",
            "cv02",
            "cv06",
            "zero",
            "onum",
            "cv17",
            "ss05",
            "ss03",
            "cv16",
            "cv31",
            "cv29",
            "cv30",
        },
    },
}
local font_size
local animation_fps
local default_prog
local front_end
local webgpu_power_preference
local webgpu_preferred_adapter

if is_windows() then
    fonts[2] = {
        family = [[Twitter Color Emoji]],
        assume_emoji_presentation = true,
    }
    font_size = 16.0
    animation_fps = 60
    default_prog = {
        [[pwsh]]
    }
    front_end = 'WebGpu'
    webgpu_power_preference = 'HighPerformance'
    webgpu_preferred_adapter = {
        backend = "Dx12",
        device = 9504,
        device_type = "DiscreteGpu",
        name = "NVIDIA GeForce RTX 3060 Laptop GPU",
        vendor = 4318,
    }
else
    fonts[2] = {
        family = [[Noto Sans CJK SC]],
        assume_emoji_presentation = false,
    }
    fonts[3] = {
        family = [[Noto Color Emiji]],
        assume_emoji_presentation = true,
    }
    font_size = 14.0
    animation_fps = 1
end


local M = {
    automatically_reload_config = true,
    cell_width = 1.0,
    line_height = 1.05,
    audible_bell = "Disabled",
    tab_bar_at_bottom = true,
    use_fancy_tab_bar = false,
    hide_tab_bar_if_only_one_tab = true,
    window_decorations = "RESIZE|TITLE",
    underline_thickness = 3.0,
    enable_scroll_bar = true,
    color_scheme = "MaterialOcean",
    window_background_image = wezterm.config_dir .. [[/background/background.png]],
    window_background_opacity = 0.9,
    window_background_image_hsb = {
        brightness = 0.02,
        hue = 1.0,
        saturation = 1.0,
    },
    text_background_opacity = 0.6,
    font = wezterm.font_with_fallback(fonts),
    font_size = font_size,
    animation_fps = animation_fps,
    default_prog = default_prog,
    front_end = front_end,
    webgpu_power_preference = webgpu_power_preference,
    webgpu_preferred_adapter = webgpu_preferred_adapter,
}

return M
