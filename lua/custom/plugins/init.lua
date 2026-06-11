-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'nvim-neo-tree/neo-tree.nvim',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    keys = {
      { '\\', '<cmd>Neotree reveal toggle<CR>', desc = 'Explorer' },
      { '<leader>e', '<cmd>Neotree reveal toggle<CR>', desc = '[E]xplorer' },
    },
    opts = {
      close_if_last_window = true,
      enable_git_status = true,
      default_component_configs = {
        icon = {
          folder_closed = '>',
          folder_open = 'v',
          folder_empty = '-',
          default = ' ',
        },
        git_status = {
          symbols = {
            added = '+',
            modified = '~',
            deleted = 'x',
            renamed = 'r',
            untracked = '?',
            ignored = '!',
            unstaged = '!',
            staged = '+',
            conflict = '!',
          },
        },
      },
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = true,
        },
        window = {
          mappings = {
            ['\\'] = 'close_window',
          },
        },
      },
      window = {
        width = 32,
      },
    },
  },
  {
    'folke/todo-comments.nvim',
    opts = {
      signs = false,
      highlight = {
        before = '',
        keyword = 'wide',
        after = 'fg',
      },
    },
  },
}
