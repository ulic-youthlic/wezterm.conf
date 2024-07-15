return require("config")
  :init()
  :append(require("options.base"))
  :append(require("options.backend"))
  :append(require("options.os")).options
