local hop_ok, hop = pcall(require, 'hop')

if not hop_ok then
  return
end

local directions = require('hop.hint').HintDirection
local modes = { 'n', 'o' }
local options = { remap = true, silent = true }

local keymap = function(mode, from, to, opts)
  vim.keymap.set(mode, from, to, opts)
end

local nkeymap = function(from, to, opts)
  keymap("n", from, to, opts)
end

hop.setup { keys = 'etovxqpdygfblzhckisuran' }

keymap(modes, 'f', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, options)

keymap(modes, 'F', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, options)

keymap(modes, 't', function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, options)

keymap(modes, 'T', function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, options)

nkeymap('S', function()
  hop.hint_words()
end, options)
