lvim.plugins = {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup({
        suggestions = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   build = function() vim.fn["mkdp#util#install"]() end,
  -- }
  {
    "iamcco/markdown-preview.nvim",
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
  { 'NvChad/nvim-colorizer.lua' },
  { 'petertriho/nvim-scrollbar' },
  { 'mbbill/undotree' },
  { 'jose-elias-alvarez/typescript.nvim' },
  { 'kevinhwang91/nvim-hlslens' },
  { 'karb94/neoscroll.nvim' },
  { 'rainbowhxch/beacon.nvim' },

  { 'lunarvim/lunar.nvim' },
  { "morhetz/gruvbox" },
  { "sainnhe/gruvbox-material" },
  { "sainnhe/sonokai" },
  { "sainnhe/edge" },
  { "lunarvim/horizon.nvim" },
  { "tomasr/molokai" },
  { "ayu-theme/ayu-vim" },

  {
    "folke/trouble.nvim",
    cmd = "TroubleToggle",
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  {
    "folke/persistence.nvim",
    event = "BufReadPre",
    config = function()
      require("persistence").setup({
        dir = vim.fn.expand(vim.fn.stdpath "state" .. "/sessions/"),
        options = { "buffers", "curdir", "tabpages", "winsize" }
      })
    end
  },
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    opts = {
      load = {
        ["core.defaults"] = {},  -- Loads default behaviour
        ["core.concealer"] = {}, -- Adds pretty icons to your documents
        ["core.dirman"] = {      -- Manages Neorg workspaces
          config = {
            workspaces = {
              notes = "~/notes",
            },
          },
        },
      },
    },
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  { "christoomey/vim-tmux-navigator" },
  { "tpope/vim-surround" },
  { "felipec/vim-sanegx",            event = "BufRead" },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
  { "tpope/vim-repeat" },

  { "ThePrimeagen/harpoon" },

  {
    'phaazon/hop.nvim',
    branch = 'v2',
  },
  {
    'nvim-telescope/telescope-frecency.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'kkharji/sqlite.lua' },
  },
  {
    'tsakirist/telescope-lazy.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
  },
  {
    'LukasPietzschmann/telescope-tabs',
    dependencies = { 'nvim-telescope/telescope.nvim' },
  },
  {
    'AckslD/nvim-trevJ.lua',
    config = 'require("trevj").setup()',
    init = function()
      vim.keymap.set('n', '<leader>j', function()
        require('trevj').format_at_cursor()
      end)
    end,
  },
  {
    "AckslD/nvim-neoclip.lua",
    dependencies = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      {
        'nvim-telescope/telescope.nvim',
      },
    },
    config = function()
      require('neoclip').setup()
    end,
  },
  -- LSP saga
  {
    "glepnir/lspsaga.nvim",
    event = "LspAttach",
    dependencies = { "nvim-tree/nvim-web-devicons" }
  }
}

table.insert(lvim.plugins, {
  "zbirenbaum/copilot-cmp",
  event = "InsertEnter",
  dependencies = { "zbirenbaum/copilot.lua" },
  config = function()
    local ok, cmp = pcall(require, "copilot_cmp")
    if ok then cmp.setup({}) end
  end,
})

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "lazy")
  pcall(telescope.load_extension, "tabs")
  pcall(telescope.load_extension, "quickfix")
  pcall(telescope.load_extension, "neoclip")
end
