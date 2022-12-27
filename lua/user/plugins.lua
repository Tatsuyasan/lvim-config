-- Additional Plugins
lvim.plugins = {
    "ThePrimeagen/harpoon",
    "petertriho/nvim-scrollbar",
    "mbbill/undotree",
    "NvChad/nvim-colorizer.lua",
    "karb94/neoscroll.nvim",
    "kevinhwang91/nvim-hlslens",
    "rainbowhxch/beacon.nvim",
    {
        "jinh0/eyeliner.nvim",
        config = function()
            require("eyeliner").setup {
                highlight_on_key = true,
            }
        end,
    },
}
