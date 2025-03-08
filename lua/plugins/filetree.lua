return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons',
      'MunifTanjim/nui.nvim',
    },
    lazy = false,
    keys = {
      { '<leader>e', ':Neotree reveal<CR>', desc = '[e]xplorer' },
    },
    config = function()
      require('neo-tree').setup {
        close_if_last_window = true,
        filesystem = {
          window = {
            position = 'left',
          },
          filtered_items = {
            hide_dotfiles = false,
            hide_gitignored = false,
            hide_hidden = true, -- only works on Windows for hidden files/directories
          },
          group_empty_dirs = false,
        },
        window = {
          auto_expand_width = false,
          mappings = {
            ['<esc>'] = 'close_window',
            ['<C-c>'] = 'close_window',
          },
        },
      }
    end,
  },
}
