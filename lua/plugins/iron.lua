-- lua/plugins/iron.lua
return {
  {
    "hkupty/iron.nvim",
    cmd = { "IronRepl", "IronAttach", "IronFocus", "IronHide" },
    ft = { "python" },
    config = function()
      require("iron.core").setup({
        config = {
          repl_definition = { -- ← solo una vez
            python = { command = { "python", "-i" } }, -- prompt >>>
          },
          repl_open_cmd = require("iron.view").split.vertical.botright(50),
        },
        keymaps = { -- opcionales
          send_motion = "<leader>sc",
          visual_send = "<leader>sc",
          send_file = "<leader>sf",
          send_line = "<leader>sl",
        },
      })
      -- atajo para abrir el REPL rápido
      vim.keymap.set("n", "<leader>ir", "<cmd>IronRepl<CR>", { desc = "Abrir REPL Python" })
    end,
  },
}
