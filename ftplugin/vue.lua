local linters = require "lvim.lsp.null-ls.linters"
local formatters = require "lvim.lsp.null-ls.formatters"
local code_actions = require "lvim.lsp.null-ls.code_actions"

linters.setup { { command = "eslint_d" } }
formatters.setup { { command = "prettierd" } }
code_actions.setup { { command = "eslint_d" } }
