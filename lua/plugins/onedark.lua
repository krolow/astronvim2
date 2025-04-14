return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  opts = {
    colorscheme = "onedark"
  },
  config = function ()
    vim.cmd("colorscheme onedark")
  end
}
