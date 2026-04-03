return{
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {"lua", "javascript","html","css","cpp","python","java","bash","go"},
      highlight = {enable = true },
      indent = {enable = true},
    })
  end
}
