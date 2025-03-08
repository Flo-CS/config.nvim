return {
  {
    'folke/todo-comments.nvim',
    event = 'VimEnter',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      signs = true,
      highlight = { comments_only = false },
      keywords = {
        SLIDE = {
          icon = '',
          color = 'info',
        },
      },
    },
  },
}
