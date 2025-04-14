require("lazy").setup({
  {
    "AstroNvim/AstroNvim",
    version = "^4", -- Remove version tracking to elect for nightly AstroNvim
    import = "astronvim.plugins",
    opts = { -- AstroNvim options must be set here with the `import` key
      mapleader = ",", -- This ensures the leader key must be configured before Lazy is set up
      maplocalleader = ",", -- This ensures the localleader key must be configured before Lazy is set up
      icons_enabled = true, -- Set to false to disable icons (if no Nerd Font is available)
      pin_plugins = nil, -- Default will pin plugins when tracking `version` of AstroNvim, set to true/false to override
      update_notifications = true, -- Enable/disable notification about running `:Lazy update` twice to update pinned plugins
    },
  },
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {
        n = {
          ["<C-W>|"] = { "<C-W>v", desc = "Vertical split" },
          ["<C-W>-"] = { "<C-W>S", desc = "Horizontal split" },
          ["<Tab>"] = { ">>", desc = "Indent right" },
          ["<S-Tab>"] = { "<<", desc = "Indent left" },
          ["<C-p>"] = { function() require("telescope.builtin").find_files() end, desc = "Find files" },
          ["\\"] = { function() require("telescope.builtin").live_grep() end, desc = "Live grep" },
          ["<C-b>"] = { function() require("telescope.builtin").buffers() end, desc = "Buffers" },
          ["<leader>xx"] = { "<cmd>TroubleToggle<cr>", desc = "Toggle Trouble" },
          ["<leader>xw"] = { "<cmd>TroubleToggle workspace_diagnostics<cr>", desc = "Workspace Diagnostics" },
          ["<leader>xd"] = { "<cmd>TroubleToggle document_diagnostics<cr>", desc = "Document Diagnostics" },
          ["<leader>xl"] = { "<cmd>TroubleToggle loclist<cr>", desc = "Location List" },
          ["<leader>xq"] = { "<cmd>TroubleToggle quickfix<cr>", desc = "Quickfix List" },
          ["gR"] = { "<cmd>TroubleToggle lsp_references<cr>", desc = "LSP References" },
        },
        v = {
          ["<Tab>"] = { ">gv", desc = "Indent right" },
          ["<S-Tab>"] = { "<gv", desc = "Indent left" },
        },
      },
    }
  },
  { import = "community" },
  { import = "plugins" },
} --[[@as LazySpec]], {
  -- Configure any other `lazy.nvim` configuration options here
  ui = { backdrop = 100 },
  performance = {
    rtp = {
      -- disable some rtp plugins, add more to your liking
      disabled_plugins = {
        "gzip",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "zipPlugin",
      },
    },
  },
} --[[@as LazyConfig]])
