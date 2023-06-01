local components = require("lvim.core.lualine.components")

lvim.builtin.lualine.options.theme = "tokyonight"

lvim.builtin.lualine.sections.lualine_a = {
  components.mode,
  components.filename
}
