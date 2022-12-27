local M = {}

function M.myUndotreeToggle()
    local isNvimTreeVisibled = require 'nvim-tree.view'.is_visible()
    if isNvimTreeVisibled then
        vim.cmd.NvimTreeClose()
    end
    vim.cmd.UndotreeToggle()
end

return M
