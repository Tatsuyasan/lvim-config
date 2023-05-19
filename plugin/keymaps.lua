local default_opts = { noremap = true, silent = true }

local keymap = function(mode, from, to, opts)
  if not opts then opts = default_opts end
  vim.keymap.set(mode, from, to, opts)
end

local nkeymap = function(from, to, opts)
  keymap("n", from, to, opts)
end

local ikeymap = function(from, to, opts)
  keymap("i", from, to, opts)
end

nkeymap("zs", ":lua require'telescope.builtin'.spell_suggest()<cr>")

-- See WhichKey instant
keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)

-- these are totally unnecessary (except the last one)
ikeymap("<C-o>l", "<C-k>->")
ikeymap("<C-o>h", "<C-k><-")
ikeymap("<C-o>k", "<C-k>-!")
ikeymap("<C-o>j", "<C-k>-v")
ikeymap("<C-o>H", "<C-k>cH")
ikeymap("<C-o>s", "<C-k>*2")
ikeymap("<C-o>c", "<C-k>Co")
ikeymap("<C-o>ok", "<C-k>OK")
ikeymap("<C-o>r", "🚀")

-- Confort in insert mode
keymap("i", "<C-CR>", "<C-c>lo")
keymap("i", "<C-S-CR>", "<C-c>lO")

-- Move selected line
keymap("v", "J", ":m '>+1<CR>gv=gv")
keymap("v", "K", ":m '<-2<CR>gv=gv")

-- Delete break line
keymap("n", "J", "mzJ`z")

-- stay with the cursor in the middle
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")
keymap("n", "*", "*zz")
keymap("n", "#", "#zz")
keymap("n", "g*", "g*zz")
keymap("n", "g#", "g#zz")
