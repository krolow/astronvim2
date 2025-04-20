return {
  "GeorgesAlkhouri/nvim-aider",
  cmd = "Aider",
  -- Example key mappings for common actions:
  keys = {
    { "<leader>i/", "<cmd>Aider toggle<cr>", desc = "Toggle Aider" },
    { "<leader>is", "<cmd>Aider send<cr>", desc = "Send to Aider", mode = { "n", "v" } },
    { "<leader>ic", "<cmd>Aider command<cr>", desc = "Aider Commands" },
    { "<leader>ie", "<cmd>Aider buffer<cr>", desc = "Send Buffer" },
    { "<leader>i+", "<cmd>Aider add<cr>", desc = "Add File" },
    { "<leader>i-", "<cmd>Aider drop<cr>", desc = "Drop File" },
    { "<leader>ir", "<cmd>Aider add readonly<cr>", desc = "Add Read-Only" },
    -- Example nvim-tree.lua integration if needed
    { "<leader>i+", "<cmd>AiderTreeAddFile<cr>", desc = "Add File from Tree to Aider", ft = "NvimTree" },
    { "<leader>i-", "<cmd>AiderTreeDropFile<cr>", desc = "Drop File from Tree from Aider", ft = "NvimTree" },
  },
  dependencies = {
    "folke/snacks.nvim",
    --- Neo-tree integration
    {
      "nvim-neo-tree/neo-tree.nvim",
      opts = function(_, opts)
        -- Example mapping configuration (already set by default)
        -- opts.window = {
        --   mappings = {
        --     ["+"] = { "nvim_aider_add", desc = "add to aider" },
        --     ["-"] = { "nvim_aider_drop", desc = "drop from aider" }
        --   }
        -- }
        require("nvim_aider.neo_tree").setup(opts)
      end,
    },
  },
  config = true,
}
