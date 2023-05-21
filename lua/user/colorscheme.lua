local themes = {
  gruvbox = "gruvbox",
  rose_pine = "rose-pine",
  lunar = "lunar",
  gruvbox_material = "gruvbox-material",
  onedarker = "onedarker",
  onedark = "onedark",
  horizon = "horizon",
  tokyonight = "tokyonight",
  tokyonight_night = "tokyonight-night",
  tokyonight_day = "tokyonight-day",
  tokyonight_moon = "tokyonight-moon",
  desert = "desert",
  morning = "morning",
  sonokai = "sonokai",
  edge = "edge",
  ayu = "ayu",
}

lvim.transparent_window = true
lvim.colorscheme = themes.tokyonight_night

local extra_opts = {
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

if vim.g.neovide then
  lvim.transparent_window = false
  return
end

vim.g.tokyonight_night_transparent_background = 2
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

if lvim.colorscheme == themes.ayu then
  vim.g.ayucolor = extra_opts.ayu.styles.mirage
end
