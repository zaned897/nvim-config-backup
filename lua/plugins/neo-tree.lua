return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Muestra archivos ocultos de forma predeterminada
        hide_dotfiles = false, -- No ocultar archivos ocultos (dotfiles)
        hide_gitignored = false, -- Mostrar archivos ignorados por Git
      },
    },
  },
}
