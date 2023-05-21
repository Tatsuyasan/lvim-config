local neoclip_ok, neoclip = pcall(require, 'neoclip')

if not neoclip_ok then
  return
end

neoclip.setup()
