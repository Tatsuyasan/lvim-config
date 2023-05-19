local kind = require("user.kind")

local function button(keybind, txt, sc)
  table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries, { keybind, txt, sc })

  -- table.insert(lvim.builtin.alpha.dashboard.section.buttons.entries,
  --   { "SPC jdc", "  DearDiary Today Entry", ":DearDiaryToday<CR>" })
end

button("s", kind.icons.magic .. " Restore", ":lua require('persistence').load()<cr>")
button("C", kind.cmp_kind.Color .. " Colorscheme Config", ":e ~/.config/lvim/lua/user/colorscheme.lua<CR>")

--     button("f", " " .. kind.cmp_kind.Folder .. " Explore", ":Telescope find_files<CR>"),
--     button("e", " " .. kind.cmp_kind.File .. " New file", ":ene <BAR> startinsert <CR>"),
--     button("s", " " .. kind.icons.magic .. " Restore", ":lua require('persistence').load()<cr>"),
--     button(
--       "g",
--       " " .. kind.icons.git .. " Git Status",
--       ":lua require('lvim.core.terminal')._exec_toggle({cmd = 'lazygit', count = 1, direction = 'float'})<CR>"
--     ),
--     button("r", " " .. kind.icons.clock .. " Recents", ":Telescope oldfiles<CR>"),
--     button("c", " " .. kind.icons.settings .. " Config", ":e ~/.config/lvim/config.lua<CR>"),
--     button("C", " " .. kind.cmp_kind.Color .. " Colorscheme Config", ":e ~/.config/lvim/lua/user/colorscheme.lua<CR>"),
--     button("q", " " .. kind.icons.exit .. " Quit", ":q<CR>"),
