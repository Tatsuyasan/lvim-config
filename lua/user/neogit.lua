local neogit_ok, neogit = pcall(require, 'neogit')

if not neogit_ok then
  return
end

neogit.setup({
  disable_commit_confirmation = true,
  kind = "split",
  integrations = {
    diffview = true
  }
})
