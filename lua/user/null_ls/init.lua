local formatters = require "lvim.lsp.null-ls.formatters"

formatters.setup {
  {
    command = "prettierd",
    filetypes = {
      "typescript",
      "typescriptreact",
      "javascript",
      "javascriptreact",
      "svelte",
      "css",
      "graphql",
      "html",
      "json",
      "less",
      "markdown",
      "scss",
      "yaml",
      "vue"
    }
  },
}
