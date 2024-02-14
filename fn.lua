local M = {}

---Check whether the current os is windows
---@return boolean whether the current os is windows
M.is_windows = function()
    return require("wezterm").target_triple:find("windows") ~= nil
end

return M
