local kind = require('user.kind')
local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"
local code_actions = require "lvim.lsp.null-ls.code_actions"

lvim.lsp.installer.setup.automatic_installation = true
lvim.lsp.installer.setup.ensure_installed = {
  'lua_ls',
  'jsonls',
  'html',
  'cssls',
  'emmet_ls',
  'tsserver'
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

vim.diagnostic.config({ float = { focusable = true, max_width = 120 } })

code_actions.setup {
  {
    command = "eslint_d"
  }
}

linters.setup {
  {
    command = "eslint_d"
  }
}

formatters.setup {
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "eslint_d",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
    ---@usage specify which filetypes to enable. By default a providers will attach to all the filetypes it supports.
  },
  {
    -- each formatter accepts a list of options identical to https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md#Configuration
    command = "prettierd",
    filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact", "vue", "svelte" }
  },
}


-- Lsp Keymaps
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

-- lvim.builtin.cmp.formatting.source_names["copilot"] = "(Copilot)"
-- table.insert(lvim.builtin.cmp.sources, 1, { name = "copilot" })
