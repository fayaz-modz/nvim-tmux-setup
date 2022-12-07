-- set colorscheme to nightfly with protected call
-- in case it isn't installed
local status, theme = pcall(require, "onedark")
if not status then
  print("Colorscheme not found!") -- print error if colorscheme not installed
  return
end

theme.setup({
  style = "cool",
})

theme.load()
