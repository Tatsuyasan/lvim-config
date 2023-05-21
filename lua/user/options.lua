if vim.g.neovide then
  vim.opt.guifont = "MonoLisa:h24"

  vim.g.neovide_transparency = 1
  vim.g.transparency = 0.8
  vim.g.neovide_scroll_animation_length = 0.3
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = true
  vim.g.neovide_input_macos_alt_is_meta = false
end

lvim.log.level = "warn"
lvim.format_on_save = true


-- Terminal
lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<c-t>"

-- Nvimtree
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}


-- TODO: ouvrir quickfix avec telescope et trouble
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

-- telescope.setup {
--   defaults = {
--     mappings = {
--       i = { ["<c-t>"] = trouble.open_with_trouble },
--       n = { ["<c-t>"] = trouble.open_with_trouble },
--     },
--   },
-- }

-- lvim.builtin.telescope.defaults.mappings = {
-- lvim.builtin.telescope.defaults.mappings = {
--   i = { ["<C-q>"] = trouble.open_with_trouble },
--   n = { ["<C-q>"] = trouble.open_with_trouble },
-- }

-- Treesitter
lvim.builtin.treesitter.ignore_install = {}
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
  "markdown",
  "markdown_inline"
}

-- Project
lvim.builtin.project.patterns = { ">Projects", ".git", "package.json" }

vim.opt.shell = "/bin/zsh"
lvim.format_on_save = true

vim.o.linebreak = true
vim.o.wrap = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}
