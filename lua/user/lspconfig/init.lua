local lsp_config_ok, lsp_config = pcall(require, "lspconfig")
if not lsp_config_ok then
  return
end

local servers = { 'tsserver', 'volar', 'pyright' }

for _, server in ipairs(servers) do
  lsp_config[server].setup {}
end

-- linter
lsp_config.eslint.setup {
  on_attach = function(_, bufnr)
    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      command = "EslintFixAll",
    })
  end,
}
