local kind = require("user.kind")

local function button(keybind, txt, sc, pos)
  table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries, pos, { keybind, txt, sc })
end

button("s", kind.icons.magic .. " Restore", "<cmd>lua require('persistence').load({ last = true })<cr>", 0)
button("C", kind.cmp_kind.Color .. " Colorscheme Config", ":e ~/.config/lvim/lua/user/colorscheme.lua<CR>", 8)
