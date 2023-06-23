local noice_ok, noice = pcall(require, 'noice')

if not noice_ok then
  return
end

local function cmdline_opts(title)
  return {
    border = {
      style = 'rounded',
      text = { top = title }
    }
  }
end

noice.setup({
  cmdline = {
    view = "cmdline_popup",
    format = {
      calculator = { pattern = '^:%s*=%s+', icon = '', lang = 'vimnormal', opts = cmdline_opts(' Calculator ') },
      substitute = {
        pattern = '^:%%?s/',
        icon = '🔁',
        ft = 'regex',
        opts = cmdline_opts(' sub (old/new/) '),
      },
      filter = { pattern = '^:%s*!', icon = '$', ft = 'sh', opts = cmdline_opts(' Filter ') },
      filefilter = {
        kind = 'Filter',
        pattern = '^:%s*%%%s*!',
        icon = '📄 $',
        ft = 'sh',
        opts = cmdline_opts(' File Filter ')
      },
      selectionfilter = {
        kind = 'Filrer',
        pattern = "^:%s*%'<,%'>%s*!",
        icon = ' $',
        ft = 'sh',
        opts = cmdline_opts(' Selection Filter '),
      },
      lua = { pattern = '^:%s*lua%s+', icon = '', conceal = true, ft = 'lua', opts = cmdline_opts(' Lua ') },
      rename = {
        pattern = '^:%s*IncRename%s+',
        icon = '✏️ ',
        conceal = true,
        opts = {
          relative = "cursor",
          size = { min_width = 20 },
          position = { row = -3, col = 0 },
          buf_options = { filetype = 'rext' },
          border = { text = { top = ' rename ' } },
        },
      },
      help = { pattern = "^:%s*h%s+", icon = "💡", opts = cmdline_opts(' help ') },
    },
  },
  messages = { view_search = false },
  lsp = {
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true,
    },
    hover = { enabled = false },
    signature = { enabled = false },
    documentation = {
      opts = {
        win_options = {
          concealcursor = "n",
          conceallevel = 3,
          winhighlight = {
            Normal = "Normal",
            FloatBorder = "helpVim",
          },
        },
      },
    },
  },
  views = {
    split = { enter = true },
    mini = { win_options = { winblend = 100 } },
  },
  presets = {
    bottom_search = true,         -- use a classic bottom cmdline for search
    command_palette = true,       -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    lsp_doc_border = true,        -- add a border to hover docs and signature help
    inc_rename = true
  },
  routes = {
    -- See https://github.com/folke/noice.nvim#-filters
    {
      view = "split",
      filter = {
        any = {
          { min_width = 150 },
          { warning = true },
        },
      },
    },
    {
      view = "mini",
      filter = {
        any = {
          { event = "msg_show", find = "B written" },
          { event = "msg_show", find = "Hop" },
          { event = "emsg",     find = "Pattern not found" },
          { find = "E486" },
        },
      },
    },
    {
      view = "popup", -- Center floating window with focus
      filter = {
        any = {
          -- { cmdline = true },
        },
      }
    },
    {
      skip = true,
      filter = {
        any = {
          { event = "msg_show",   find = "fewer lines" },
          { event = "msg_show",   find = "lines moved" },
          { find = "E315" },
          { find = "code_actions" },
        }
      }
    }
  },
})
