local wezterm = require("wezterm")

---@class Config
---@filed options table
local Config = {}

---Init Config
---@return Config
function Config:init()
  local o = {}
  self = setmetatable(o, { __index = Config })
  self.options = {}
  return o
end

---Append to `Config.options`
---@param new_options table new options to append
---@return Config
function Config:append(new_options)
  for key, val in pairs(new_options) do
    if self.options[key] ~= nil then
      wezterm.log_warn("Duplicate config option detected: ", {
        old = self.options[key],
        new = new_options[key],
      })
    else
      self.options[key] = val
    end
  end
  return self
end

return Config
