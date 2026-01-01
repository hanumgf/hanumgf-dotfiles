return {
  { "xiyaowong/transparent.nvim" },
  { "neanias/everforest-nvim" },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "storm", -- moon, night, dayなど他のスタイルも選択可能
      transparent = true, -- これが全体を透過させる設定
      styles = {
        sidebars = "transparent", -- ファイルツリーなどサイドバーを透過
        floats = "transparent", -- フローティングウィンドウを透過
      },
    },
    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme("tokyonight")
    end,
  },
}
