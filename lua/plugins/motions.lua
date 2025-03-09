return {
  {
    'chrisgrieser/nvim-spider',
    lazy = true,
    keys = {
      { 'w', "<cmd>lua require('spider').motion('w')<CR>", mode = { 'n', 'o', 'x' } },
      { 'e', "<cmd>lua require('spider').motion('e')<CR>", mode = { 'n', 'o', 'x' } },
      { 'b', "<cmd>lua require('spider').motion('b')<CR>", mode = { 'n', 'o', 'x' } },
    },
  },
  -- {
  --   'folke/flash.nvim',
  --   event = 'VeryLazy',
  --   ---@type Flash.Config
  --   opts = {},
  --   keys = {
  --     --   {
  --     --     '<leader><leader>',
  --     --     mode = { 'n', 'x', 'o' },
  --     --     function()
  --     --       require('flash').jump()
  --     --     end,
  --     --     desc = '(s)earch w/ Flash',
  --     --   },
  --   },
  -- },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require('harpoon').setup {}
    end,
  },
}
