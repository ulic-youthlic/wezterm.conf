local wezterm = require("wezterm")

local M = {
    front_end = 'WebGpu',
    webgpu_power_preference = 'HighPerformance',
}

for _, gpu in ipairs(wezterm.gui.enumerate_gpus()) do
    if gpu.backend == 'Vulkan' and gpu.device_type == 'DiscreteGpu' then
        M.webgpu_preferred_adapter = gpu
        break
    elseif gpu.backend == 'Vulkan' and M.webgpu_preferred_adapter == nil then
        M.webgpu_preferred_adapter = gpu
    end
end


return M
