local kind = require('user.kind')

lvim.lsp.installer.setup.automatic_installation = true
lvim.lsp.installer.setup.ensure_installed = {
  'lua_ls',
  'jsonls',
  'html',
  'cssls',
  'emmet_ls',
  'tsserver',
  'volar'
}

lvim.lsp.on_attach_callback = function(_, _)
  if lvim.colorscheme == 'gruvbox' then
    -- change coloring of errors so I can actually read them with gruvbox
    vim.cmd(':hi DiagnosticError guifg=#de5b64 guibg=#1C1C1C')
    vim.cmd(':hi DiagnosticWarn guifg=DarkOrange ctermfg=DarkYellow')
    vim.cmd(':hi DiagnosticInfo guifg=Cyan ctermfg=Cyan')
    vim.cmd(':hi DiagnosticHint guifg=White ctermfg=White')
  end
end

require "nvim-treesitter.configs".setup {
  query_linter = {
    enable = true,
    use_virtual_text = true,
    lint_events = { "BufWrite", "CursorHold" },
  },
}

vim.diagnostic.config({ float = { focusable = true, max_width = 120 } })

-- Lsp Keymaps
lvim.lsp.buffer_mappings.normal_mode["K"] = {
  "<cmd>Lspsaga hover_doc<CR>",
  "Lspsaga hover doc"
}

lvim.lsp.buffer_mappings.normal_mode["gr"] = {
  ":lua require'telescope.builtin'.lsp_references({ includeDeclaration = false })<cr>",
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

-- lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
-- table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
