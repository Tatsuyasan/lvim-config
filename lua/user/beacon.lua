local beacon_ok, beacon = pcall(require, 'beacon')

if not beacon_ok then
    return
end

vim.api.nvim_set_hl(0, 'Beacon', { bg = 'white', fg = 'white', ctermbg = 15 })

beacon.setup({
    enable = true,
    size = 40,
    fade = true,
    minimal_jump = 5,
    show_jumps = true,
    focus_gained = false,
    shrink = true,
    timeout = 500,
    ignore_buffers = {},
    ignore_filetypes = {},
})
