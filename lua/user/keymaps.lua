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

lvim.leader = "space"
vim.g.maplocalleader = ","

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-q>"] = "<cmd>Lspsaga show_buf_diagnostics<cr>"

nkeymap("zs", ":lua require'telescope.builtin'.spell_suggest()<cr>")

nkeymap("<M-h>", ":BufferLineMovePrev<cr>")
nkeymap("<M-l>", ":BufferLineMoveNext<cr>")

nkeymap("gR", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })

-- Toggle WhichKey instant
keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>")

-- Paste in insert mode (cause WSL terminal)
ikeymap("<C-v>", "<C-R>*")

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


-- Better escape
-- vim.keymap.set('n', '<Esc>', ':noh<return><esc>')
-- Combine escape and no highliting
vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', "<Esc>:noh<return><Esc>")

nkeymap('gn', ":tabe %<CR>")

-- Rename word current buffer
nkeymap("gR", function()
  return ":IncRename " .. vim.fn.expand("<cword>")
end, { expr = true })
