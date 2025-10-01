return {
  "abecodes/tabout.nvim",
  event = "InsertCharPre",
  dependencies = { "nvim-treesitter", "nvim-cmp" }, -- optional but recommended
  config = function()
    require("tabout").setup({
      tabkey = "<Tab>",            -- use Tab to tabout
      backwards_tabkey = "<S-Tab>",-- use Shift+Tab to jump backwards
      act_as_tab = true,           -- when there's nothing to tabout, act like a normal Tab
      act_as_shift_tab = true,     -- same for Shift+Tab
      enable_backwards = true,
      completion = true,           -- integrate with nvim-cmp
      tabouts = {
        { open = "'", close = "'" },
        { open = '"', close = '"' },
        { open = "`", close = "`" },
        { open = "(", close = ")" },
        { open = "[", close = "]" },
        { open = "{", close = "}" },
        { open = "<", close = ">" },
      },
    })
  end,
      {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "lua", "cpp", "c", "python", "javascript", "html", "css" },
      highlight = { enable = true },
    },
  },

}




