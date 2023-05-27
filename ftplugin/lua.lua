local wk_ok, wk = pcall(require, "which-key")
if not wk_ok then
  return
end

local vopts = lvim.builtin.which_key.vopts
local opts = lvim.builtin.which_key.opts

local mappings = {
  ["z"] = {
    name = "Print",
    l = { '"ayiwovim.print(\'<C-R>a:\', <C-R>a);<Esc>', " Pretty Print" },
  }
}

local vmappings = {
  ['z'] = {
    name = 'Print',
    l = { 'yovim.print(\'<esc>pa\', <esc>pa)<Esc>', " Pretty Print" },
  },
}

wk.register(mappings, opts)
wk.register(vmappings, vopts)
