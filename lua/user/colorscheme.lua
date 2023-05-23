require 'user.colorscheme.tokyonight'
require 'user.colorscheme.catppuccin'
require 'user.colorscheme.onedark'

local themes = {
  -- There is many others, check it with <leader>sp
  -- Many of them need to be config - put it in colorscheme folder
  tokyonight = "tokyonight",
  tokyonight_night = "tokyonight-night",
  tokyonight_day = "tokyonight-day",
  tokyonight_moon = "tokyonight-moon",
  catppuccin = "catppuccin",
  gruvbox = "gruvbox",
  gruvbox_material = "gruvbox-material",
  rose_pine = "rose-pine",
  lunar = "lunar",
  onedark = "onedark",
  horizon = "horizon",
  desert = "desert",
  morning = "morning",
  sonokai = "sonokai",
  edge = "edge",
  ayu = "ayu",
  everforest = "everforest",
}

lvim.transparent_window = true
lvim.colorscheme = themes.tokyonight_moon

local extra_opts = {
  everforest = {
    transparent_background = 2
  },
  sonokai = {
    styles = {
      espresso = "espresso",
      shusia = "shusia",
      atlantis = "atlantis",
      default = "default",
    },
    transparent_background = 2
  },
  ayu = {
    styles = {
      mirage = "mirage",
      light = "light",
      dark = "dark",
    },
  },
  edge = {
    styles = {
      aura = "aura",
      neon = "neon",
    },
    airline_theme = "edge",
    lualine_theme = "edge",
  },
}


if lvim.colorscheme == themes.gruvbox_material then
  vim.g.gruvbox_material_transparent_background = 2
end

if lvim.colorscheme == themes.sonokai then
  vim.g.sonokai_style = extra_opts.sonokai.styles.atlantis
  vim.g.sonokai_transparent_background = extra_opts.sonokai.transparent_background
end

if lvim.colorscheme == themes.edge then
  vim.g.airline_theme = extra_opts.edge.airline_theme
  vim.g.edge_style = extra_opts.edge.styles.aura
  lvim.builtin.lualine.options.theme = extra_opts.edge.lualine_theme
end

if lvim.colorscheme == themes.everforest then
  vim.g.everforest_transparent_background = extra_opts.everforest.transparent_background
end


if lvim.colorscheme == themes.ayu then
  vim.g.ayucolor = extra_opts.ayu.styles.mirage
end
