lvim.plugins = {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup({
        suggestions = { enabled = false },
        panel = { enabled = false },
      })
    end,
  },
  { 'jose-elias-alvarez/typescript.nvim' },
  { 'windwp/nvim-autopairs' },
  { 'windwp/nvim-ts-autotag' },
  { 'NvChad/nvim-colorizer.lua' },
  { 'petertriho/nvim-scrollbar' },
  { 'mbbill/undotree' },
  { 'kevinhwang91/nvim-hlslens' },
  { 'karb94/neoscroll.nvim' },
  { 'rainbowhxch/beacon.nvim' },
  { 'sindrets/diffview.nvim' },
  {
    'smjonas/inc-rename.nvim',
    config = function()
      require('inc_rename').setup()
    end,
  },
  {
    'mrjones2014/nvim-ts-rainbow',
  },
  {
    'timuntersberger/neogit',
    dependencies = {
      { 'nvim-lua/plenary.nvim' },
      { 'sindrets/diffview.nvim' }
    }
  },

  -- Themes
  { 'lunarvim/lunar.nvim' },
  { 'catppuccin/nvim',         name = "catppuccin" },
  { 'morhetz/gruvbox' },
  { 'sainnhe/gruvbox-material' },
  { 'sainnhe/everforest' },
  { 'sainnhe/sonokai' },
  { 'navarasu/onedark.nvim' },
  { 'sainnhe/edge' },
  { 'lunarvim/horizon.nvim' },
  { 'tomasr/molokai' },
  { 'ayu-theme/ayu-vim' },

  {
    'folke/trouble.nvim',
    cmd = "TroubleToggle",
  },
  {
    'folke/todo-comments.nvim',
    event = "BufRead",
  },
  {
    'folke/persistence.nvim',
    event = "BufReadPre",
  },
  { 'folke/zen-mode.nvim' },

  {
    'nvim-neorg/neorg',
    build = ':Neorg sync-parsers',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  { 'christoomey/vim-tmux-navigator' },
  { 'tpope/vim-surround' },
  { 'tpope/vim-repeat' },
  { 'ThePrimeagen/harpoon' },
  {
    'phaazon/hop.nvim',
    branch = 'v2',
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
    'AckslD/nvim-neoclip.lua',
    dependencies = {
      { 'kkharji/sqlite.lua', module = 'sqlite' },
      {
        'nvim-telescope/telescope.nvim',
      },
    },
  },
  -- LSP saga
  {
    'glepnir/lspsaga.nvim',
    event = 'LspAttach',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },

  -- Telescope extensions
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
    'debugloop/telescope-undo.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim' },
  },
}

-- table.insert(lvim.plugins, {
--   "zbirenbaum/copilot-cmp",
--   event = "InsertEnter",
--   dependencies = { "zbirenbaum/copilot.lua" },
--   config = function()
--     local ok, cmp = pcall(require, "copilot_cmp")
--     if ok then cmp.setup({}) end
--   end,
-- })
