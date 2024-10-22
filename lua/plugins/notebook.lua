return {
  {
    "GCBallesteros/NotebookNavigator.nvim",
    keys = {
      {
        "]h",
        function()
          require("notebook-navigator").move_cell("d")
        end,
      },
      {
        "[h",
        function()
          require("notebook-navigator").move_cell("u")
        end,
      },
      { "<leader>X", "<cmd>lua require('notebook-navigator').run_cell()<cr>" },
      { "<leader>x", "<cmd>lua require('notebook-navigator').run_and_move()<cr>" },
    },
    dependencies = {
      "echasnovski/mini.comment", -- Mini comment is a required dependency
      "hkupty/iron.nvim", -- REPL provider
      "anuvyklack/hydra.nvim", -- Hydra mode for quick cell manipulations
    },
    event = "VeryLazy",
    config = function()
      local nn = require("notebook-navigator")
      nn.setup({
        activate_hydra_keys = "<leader>h",
        repl_provider = "iron", -- Puedes cambiar a otro si prefieres "toggleterm" o "molten"
      })
    end,
  },
  -- Opcional para la integración de mini.hipatterns
  {
    "echasnovski/mini.hipatterns",
    event = "VeryLazy",
    dependencies = { "GCBallesteros/NotebookNavigator.nvim" },
    opts = function()
      local nn = require("notebook-navigator")
      return { highlighters = { cells = nn.minihipatterns_spec } }
    end,
  },
  -- Opcional para la integración de mini.ai (manipulación de celdas como objetos de texto)
  {
    "echasnovski/mini.ai",
    event = "VeryLazy",
    dependencies = { "GCBallesteros/NotebookNavigator.nvim" },
    opts = function()
      local nn = require("notebook-navigator")
      return { custom_textobjects = { h = nn.miniai_spec } }
    end,
  },
}
