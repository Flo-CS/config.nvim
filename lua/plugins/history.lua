return {
  {
    'debugloop/telescope-undo.nvim',
    dependencies = {
      {
        'nvim-telescope/telescope.nvim',
        dependencies = { 'nvim-lua/plenary.nvim' },
      },
    },
    keys = {
      {
        '<leader>th',
        '<cmd>Telescope undo<cr>',
        desc = '[t]oggle [h]istory tree',
      },
    },
    opts = {
      extensions = {
        undo = {
          use_delta = false,
          side_by_side = false,
          layout_strategy = 'vertical',
          layout_config = {
            preview_height = 0.7,
          },
        },
      },
    },
    config = function(_, opts)
      require('telescope').setup(opts)
      require('telescope').load_extension 'undo'
    end,
  },
}
