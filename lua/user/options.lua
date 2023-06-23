lvim.log.level = "warn"
lvim.format_on_save = true
lvim.builtin.nvimtree.setup.renderer.icons.show.git = true

-- Telescope
lvim.builtin.telescope.defaults.path_display = {
  shorten = 4,
}

-- Terminal
lvim.builtin.terminal.active = true
lvim.builtin.terminal.open_mapping = "<c-b>"

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
  "norg",
  "markdown",
  "markdown_inline"
}

-- Project
lvim.builtin.project.patterns = { ">Projects", ".git", "package.json" }

-- Open link with gx (wsl)
vim.g.netrw_browsex_viewer = "cmd.exe /C start"

local options = {
  shell = '/bin/zsh',
  -- DISPLAY
  number = true,
  relativenumber = true,
  sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions",
  cursorline = true,
  fileencoding = "utf-8",
  splitbelow = true,
  splitright = true,
  -- conceallevel = 2,
  termguicolors = true, -- to enable highlight groups
  linebreak = true,
  wrap = false,
  -- SEARCH
  ignorecase = true,
  smartcase = true,
  -- REMOVE BEEP
  errorbells = false,
}

for key, value in pairs(options) do
  vim.opt[key] = value
end
