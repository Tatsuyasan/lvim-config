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
ikeymap("<C-Enter>", "<C-c>lo")
