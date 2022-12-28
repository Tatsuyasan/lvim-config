M = {}
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
-- lvim.keys.normal_mode["<S-l>"] = ":BufferLineCycleNext<CR>"
-- lvim.keys.normal_mode["<S-h>"] = ":BufferLineCyclePrev<CR>"
-- unmap a default keymapping
-- vim.keymap.del("n", "<C-Up>")
-- override a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>" -- or vim.keymap.set("n", "<C-q>", ":q<cr>" )


keymap("n", "<C-Space>", "<cmd>WhichKey \\<space><cr>", opts)

-- Confort in insert mode
keymap("i", "<C-Cr>", "<Esc>lo", opts)
keymap("i", "<C-S-Cr>", "<Esc>lO", opts)

-- Save file
keymap("n", "<C-s>", ":w<cr>", opts)
keymap("i", "<C-s>", "<Esc>:w<cr>l", opts)

keymap("n", "<M-h>", ":BufferLineMovePrev<cr>", opts)
keymap("n", "<M-l>", ":BufferLineMoveNext<cr>", opts)

-- Move selected line
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Delete break line
keymap("n", "J", "mzJ`z", opts)

-- prev / next buffer
keymap("n", "H", ":bp<cr>", opts)
keymap("n", "L", ":bn<cr>", opts)

-- stay with the cursor in the middle
keymap("n", "<C-d>", "<C-d>zz")
keymap("n", "<C-u>", "<C-u>zz", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)
keymap("n", "*", "*zz", opts)
keymap("n", "#", "#zz", opts)
keymap("n", "g*", "g*zz", opts)
keymap("n", "g#", "g#zz", opts)

-- greatest remap ever
-- avoid overide yank on paste
keymap("x", "<leader>p", [["_dP]], opts)

-- avoid override yank on delete
keymap("n", "<leader>d", "\"_d", opts)
keymap("v", "<leader>d", "\"_d", opts)

-- next greatest remap ever : asbjornHaland
-- copy to the clipboard system
keymap({ "n", "v" }, "<leader>y", [["+y]], opts)
keymap("n", "<leader>Y", [["+Y]], opts)

keymap("i", "<C-c>", "<Esc>", opts)

keymap("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], opts)
keymap("n", "<leader>x", "<cmd>!chmod +x %<CR>", opts)

M.show_documentation = function()
    local filetype = vim.bo.filetype
    if vim.tbl_contains({ "vim", "help" }, filetype) then
        vim.cmd("h " .. vim.fn.expand "<cword>")
    elseif vim.tbl_contains({ "man" }, filetype) then
        vim.cmd("Man " .. vim.fn.expand "<cword>")
    elseif vim.fn.expand "%:t" == "Cargo.toml" then
        require("crates").show_popup()
    else
        vim.lsp.buf.hover()
    end
end

vim.api.nvim_set_keymap("n", "K", ":lua require('user.keymaps').show_documentation()<CR>", opts)
