local todoComments_ok, todoComments = pcall(require, 'todo-comments')

if not todoComments_ok then
  return
end

todoComments.setup()
