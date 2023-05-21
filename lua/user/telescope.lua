lvim.builtin.telescope.pickers = {
  layout_config = {
    preview_width = 100
  },
  find_files = {
    layout_config = {
      width = 0.50,
      height = 0.30,
    },
  },
  git_files = {
    layout_config = {
      width = 0.50,
      height = 0.30,
    },
  },
  grep_string = {
    layout_config = {
      width = 0.50,
      height = 0.30,
    },
  },
  live_grep = {
    preview_width = 1,

    layout_config = {
      width = 0.50,
      height = 0.30,
    },
  },
}

lvim.builtin.telescope.on_config_done = function(telescope)
  pcall(telescope.load_extension, "frecency")
  pcall(telescope.load_extension, "lazy")
  pcall(telescope.load_extension, "tabs")
  pcall(telescope.load_extension, "quickfix")
  pcall(telescope.load_extension, "neoclip")
  pcall(telescope.load_extension, "undo")
end
