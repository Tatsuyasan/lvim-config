local autocmd = vim.api.nvim_create_autocmd

-- Don't auto commenting new lines
autocmd('BufEnter', {
  pattern = '',
  command = 'set fo-=c fo-=r fo-=o'
})

-- let treesitter use bash highlight for zsh files as well
autocmd("FileType", {
  pattern = { "zsh" },
  callback = function()
    require("nvim-treesitter.highlight").attach(0, "bash")
  end,
})
