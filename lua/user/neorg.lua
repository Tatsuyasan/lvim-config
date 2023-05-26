local neorg_ok, neorg = pcall(require, 'neorg')

if not neorg_ok then
  return
end

table.insert(lvim.builtin.cmp.sources, { name = "neorg" })

neorg.setup({
  load = {
    ["core.defaults"] = {},                -- Loads default behaviour
    ["core.integrations.treesitter"] = {}, -- Loads default behaviour
    ["core.completion"] = {
      config = {
        engine = 'nvim-cmp'
      }
    }, -- Loads default behaviour
    ["core.concealer"] = {
      config = {
        icon_preset = 'diamond'
      },
    },                  -- Adds pretty icons to your documents
    ["core.dirman"] = { -- Manages Neorg workspaces
      config = {
        workspaces = {
          notes = "~/notes",
        },
        default_workspace = "notes"
      },
    },
  },
})
