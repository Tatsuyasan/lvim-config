local kind = require('user.kind')

local wk = lvim.builtin.which_key

wk.mappings["S"] = {
  name = "Persistence",
  s = { "<cmd>lua require('persistence').load()<cr>", "Reload last session for dir " .. kind.icons.clock },
  l = { "<cmd>lua require('persistence').load({ last = true })<cr>", "Restore last session " .. kind.icons.clock },
  Q = { "<cmd>lua require('persistence').stop()<cr>", "Quit without saving session " .. kind.icons.exit },
}

wk.mappings["l"]["t"] = { ":LvimToggleFormatOnSave<cr>", "Toggle format-on-save " .. kind.symbols_outline.File }
wk.mappings["l"]["R"] = { ":LspRestart<cr>", "Restart " .. kind.icons.exit }

wk.mappings["s"]["w"] = {
  "<cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.expand('<cword>') })<cr>",
  "Search Word Under Cursor" .. kind.cmp_kind.EnumMember
}

wk.mappings["b"]["c"] = {
  "<cmd>silent! %bd|e#|bd#<cr>",
  'Close all except current'
}

wk.mappings["m"] = {
  name = "Harpoon " .. kind.todo_comments.PERF,
  m = { ":lua require('harpoon.mark').add_file()<cr>", "Mark file" },
  t = { ":lua require('harpoon.ui').toggle_quick_menu()<cr>", "Toggle UI" },
  a = { ":lua require('harpoon.ui').nav_file(1)<cr>", "Goto mark 1" },
  s = { ":lua require('harpoon.ui').nav_file(2)<cr>", "Goto mark 2" },
  d = { ":lua require('harpoon.ui').nav_file(3)<cr>", "Goto mark 3" },
  f = { ":lua require('harpoon.ui').nav_file(4)<cr>", "Goto mark 4" },
  g = { ":lua require('harpoon.ui').nav_file(5)<cr>", "Goto mark 5" },
  q = { ":lua require('harpoon.ui').nav_file(6)<cr>", "Goto mark 6" },
  w = { ":lua require('harpoon.ui').nav_file(7)<cr>", "Goto mark 7" },
  e = { ":lua require('harpoon.ui').nav_file(8)<cr>", "Goto mark 8" },
  r = { ":lua require('harpoon.ui').nav_file(9)<cr>", "Goto mark 9" },
  n = { ":lua require('harpoon.ui').nav_next()<cr>", "Next file" },
  p = { ":lua require('harpoon.ui').nav_prev()<cr>", "Prev file" },
}

wk.mappings["w"] = {
  name = "Window Ctrl " .. kind.icons.screen,
  h = { '<C-w>|', 'Maximize window horizontally (|)' },
  v = { '<C-w>_', 'Maximize window vertically (_)' },
  ['='] = { '<C-w>=', 'Resize windows equally' },
  s = { ":lua require('telescope-tabs').list_tabs()<cr>", 'Search Tabs' },
  c = { "<cmd>only<cr>", 'Close all windows except focus one' },
}

wk.mappings["G"] = {
  name = "Github Copilot " .. kind.icons.hint,
  a = { ":lua require('copilot.suggestion').accept()<cr>", "Accept" },
  n = { ":lua require('copilot.suggestion').next()<cr>", "Next" },
  N = { ":lua require('copilot.suggestion').prev()<cr>", "Prev" },
  d = { ":lua require('copilot.suggestion').dismiss()<cr>", "Dismiss" },
  t = { ":lua require('copilot.suggestion').toggle_auto_trigger()<cr>", "Toggle Auto Trigger" },
}

wk.mappings['x'] = { "<cmd>silent! xa<cr>", "Save All and Quit", }

wk.mappings['y'] = { "<cmd>Telescope neoclip<cr>", "Neoclip telescope list", }

wk.mappings["t"] = {
  name = 'Telescope',
  p = { ':Telescope projects<cr>', 'Projects' }, -- requires telescope-project.nvim plugin
  r = { ':Telescope resume<cr>', 'Resume' },
  l = { ':Telescope lazy<cr>', 'Lazy plugins' },
}

wk.mappings["u"] = { '<cmd>Telescope undo<cr>', "File history" }

wk.mappings["n"] = {
  name = "Neorg " .. kind.icons.docs,
  o = { '<cmd>Neorg index<cr>', 'Open default workspace' },
  r = { '<cmd>Neorg return<cr>', 'Close Neorg' },
}
