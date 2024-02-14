if require('fn').is_windows() then
    return require("options.os.windows")
else
    return require("options.os.other_os")
end
