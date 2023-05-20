local kind = require('user.kind')

lvim.leader = "space"

lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
lvim.keys.normal_mode["<C-q>"] = "<cmd>Lspsaga show_buf_diagnostics<cr>"

vim.keymap.set('n', 'gn', ":tabe %<CR>")
vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', "<Esc>")

-- lvim.keys.normal_mode["<C-q>"] = function(bufnr)
--   require("telescope.actions").smart_send_to_qflist(bufnr)
--   require("telescope.builtin").quickfix()
-- end
lvim.lsp.buffer_mappings.normal_mode["K"] = {
  "<cmd>Lspsaga hover_doc<CR>",
  "Lspsaga hover doc"
}

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references()<cr>",
  kind.cmp_kind.Reference .. " Find references"
}

lvim.lsp.buffer_mappings.normal_mode["gd"] = {
  -- ":lua vim.lsp.buf.definition()<cr>",
  ":lua require'telescope.builtin'.lsp_definitions()<cr>",
  kind.cmp_kind.Reference .. " Definitions"
}

lvim.lsp.buffer_mappings.normal_mode["gD"] = {
  ":lua vim.lsp.buf.type_definition()<cr>",
  kind.cmp_kind.Reference .. " Type Definition"
}

lvim.lsp.buffer_mappings.normal_mode["gf"] = {
  ":Telescope frecency<cr>",
  kind.cmp_kind.Reference .. " Telescope Frecency"
}
