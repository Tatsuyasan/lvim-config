local lspsaga_ok, lspsaga = pcall(require, 'lspsaga')
local default_opts = { noremap = true, silent = true }

if not lspsaga_ok then
  return
end

local keymap = function(mode, from, to, opts)
  if not opts then opts = default_opts end
  vim.keymap.set(mode, from, to, opts)
end

lspsaga.setup({})

keymap("n", "gR", "<cmd>Lspsaga rename<CR>")
keymap("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")
keymap({ "n", "v" }, "ga", "<cmd>Lspsaga code_action<CR>")
-- show_diagnostics
