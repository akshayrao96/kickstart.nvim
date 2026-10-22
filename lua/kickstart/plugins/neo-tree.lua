-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

vim.pack.add {
  { src = 'https://github.com/nvim-neo-tree/neo-tree.nvim', version = vim.version.range '*' },
  'https://github.com/nvim-lua/plenary.nvim',
  'https://github.com/MunifTanjim/nui.nvim',
  'https://github.com/nvim-tree/nvim-web-devicons', -- coloured file-type icons
}

-- `\` toggles a floating tree over the editor, jumping to the current file. Hidden otherwise.
vim.keymap.set('n', '\\', '<Cmd>Neotree float toggle reveal<CR>', { desc = 'NeoTree toggle', silent = true })

-- Toggle a persistent sidebar with Space e.
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree left toggle reveal<CR>', {
  desc = 'Toggle file sidebar',
  silent = true,
})

require('neo-tree').setup {
  popup_border_style = 'rounded',
  window = {
    width = 30,
    mappings = {
      ['\\'] = 'close_window',
    },
  },
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = 'disabled', -- don't take over `nvim .`
  },
}
