local hlslens_ok, hlslens = pcall(require, 'hlslens')

if not hlslens_ok then
  return
end

hlslens.setup()

local keymap = vim.keymap.set
local kopts = { noremap = true, silent = true }

keymap('n', 'n',
  "<cmd>execute('normal! ' . v:count1 . 'n')<cr><cmd>lua require('hlslens').start()<cr>",
  kopts)
keymap('n', 'N',
  "<cmd>execute('normal! ' . v:count1 . 'N')<cr><cmd>lua require('hlslens').start()<cr>",
  kopts)
keymap("n", "*", "*zz<cmd>lua require('hlslens').start()<cr>", kopts)
keymap("n", "#", "#zz<cmd>lua require('hlslens').start()<cr>", kopts)
keymap("n", "g*", "g*zz<cmd>lua require('hlslens').start()<cr>", kopts)
keymap("n", "g#", "g#zz<cmd>lua require('hlslens').start()<cr>", kopts)
