local wezterm = require("wezterm")

local fonts = {
    require("fonts.firacode_nerd_font"),
    require("fonts.twitter_color_emoji"),
}

return {
    font_size = 16.0,
    animation_fps = 60,
    max_fps = 60,
    default_prog = {
        [[pwsh]]
    },
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
    webgpu_preferred_adapter = {
        backend = "Dx12",
        device = 9504,
        device_type = "DiscreteGpu",
        name = "NVIDIA GeForce RTX 3060 Laptop GPU",
        vendor = 4318,
    },
    win32_system_backdrop = "Acrylic",
    font = wezterm.font_with_fallback(fonts),
}
