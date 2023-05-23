lvim.log.level = "warn"
lvim.format_on_save = true
lvim.lint_on_save = true

-- Telescope
lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}

-- Terminal
lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<c-t>"

-- Nvimtree
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true
lvim.builtin.nvimtree.setup.filters.custom = {}

-- Treesitter
lvim.builtin.treesitter.highlight.enabled = true
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.rainbow.enable = true
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "typescript",
  "vue",
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

local options = {
  shell = '/bin/zsh',
  -- DISPLAY
  number = true,
  relativenumber = true,
  -- sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions",
  cursorline = true,
  fileencoding = "utf-8",
  splitbelow = true,
  splitright = true,
  smartindent = true,
  termguicolors = true, -- to enable highlight groups
  updatetime = 1000,
  -- SEARCH
  ignorecase = true,
  smartcase = true,
  -- REMOVE BEEP
  errorbells = false,

  -- CUSTOM
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
