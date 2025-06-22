-- bootstrap lazy.nvim and your plugins
require("config.lazy")

require("catppuccin").setup({
  transparent_background = true,
  dim_inactive = {
    enabled = true,
    shade = "dark",
    percentage = 0.8,
  },
  styles = {
    background = "#001B26", -- Cambia el color de fondo
  },
})
vim.cmd("colorscheme catppuccin")

vim.cmd([[
  autocmd WinEnter * hi Normal guibg=NONE ctermbg=NONE
  autocmd WinEnter * hi SignColumn guibg=NONE ctermbg=NONE
  autocmd WinEnter * hi LineNr guibg=NONE ctermbg=NONE
  autocmd WinEnter * hi EndOfBuffer guibg=NONE ctermbg=NONE
  hi Normal guibg=NONE
  hi NormalNC guibg=NONE
]])
vim.o.cursorline = true

vim.cmd("highlight CursorLine guibg=#21252b") -- línea activa casi igual al fondo
vim.cmd("highlight Visual guibg=#083da8 guifg=NONE") -- selección suave pero visible

vim.o.cmdheight = 1

vim.api.nvim_set_keymap("i", "kj", "<Esc>", { noremap = true, silent = true })
