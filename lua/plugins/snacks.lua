return {
  {
    'folke/snacks.nvim',
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      keys = {
        {
          '<leader>z',
          function()
            Snacks.zen()
          end,
          desc = 'Toggle Zen Mode',
        },
        {
          '<leader>Z',
          function()
            Snacks.zen.zoom()
          end,
          desc = 'Toggle Zoom',
        },
        {
          '<leader>.',
          function()
            Snacks.scratch()
          end,
          desc = 'Toggle Scratch Buffer',
        },
        {
          '<leader>S',
          function()
            Snacks.scratch.select()
          end,
          desc = 'Select Scratch Buffer',
        },
        {
          '<leader>n',
          function()
            Snacks.notifier.show_history()
          end,
          desc = 'Notification History',
        },
        {
          '<leader>bd',
          function()
            Snacks.bufdelete()
          end,
          desc = 'Delete Buffer',
        },
        {
          '<leader>cR',
          function()
            Snacks.rename.rename_file()
          end,
          desc = 'Rename File',
        },
        {
          '<leader>gB',
          function()
            Snacks.gitbrowse()
          end,
          desc = 'Git Browse',
          mode = { 'n', 'v' },
        },
        {
          '<leader>gb',
          function()
            Snacks.git.blame_line()
          end,
          desc = 'Git Blame Line',
        },
        {
          '<leader>gf',
          function()
            Snacks.lazygit.log_file()
          end,
          desc = 'Lazygit Current File History',
        },
        {
          '<leader>gg',
          function()
            Snacks.lazygit()
          end,
          desc = 'Lazygit',
        },
        {
          '<leader>gl',
          function()
            Snacks.lazygit.log()
          end,
          desc = 'Lazygit Log (cwd)',
        },
        {
          '<leader>un',
          function()
            Snacks.notifier.hide()
          end,
          desc = 'Dismiss All Notifications',
        },
        {
          '<c-/>',
          function()
            Snacks.terminal()
          end,
          desc = 'Toggle Terminal',
        },
        {
          '<c-_>',
          function()
            Snacks.terminal()
          end,
          desc = 'which_key_ignore',
        },
        {
          ']]',
          function()
            Snacks.words.jump(vim.v.count1)
          end,
          desc = 'Next Reference',
          mode = { 'n', 't' },
        },
        {
          '[[',
          function()
            Snacks.words.jump(-vim.v.count1)
          end,
          desc = 'Prev Reference',
          mode = { 'n', 't' },
        },
        {
          '<leader>N',
          desc = 'Neovim News',
          function()
            Snacks.win {
              file = vim.api.nvim_get_runtime_file('doc/news.txt', false)[1],
              width = 0.6,
              height = 0.6,
              wo = {
                spell = false,
                wrap = false,
                signcolumn = 'yes',
                statuscolumn = ' ',
                conceallevel = 3,
              },
            }
          end,
        },
      },
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      bigfile = { enabled = true },
      dashboard = { enabled = true },
      indent = { enabled = false },
      input = { enabled = true },
      notifier = { enabled = true },
      quickfile = { enabled = false },
      terminal = { enabled = false },
      scroll = {
        enabled = false,
        animate = {
          duration = { step = 15, total = 100 },
          easing = 'linear',
        },
      },
      statuscolumn = { enabled = false },
      words = { enabled = false },
    },
    {
      'folke/trouble.nvim',
      opts = {
        scroll = {},
      }, -- for default options, refer to the configuration section for custom setup.
      cmd = 'Trouble',
      keys = {
        {
          '<leader>xx',
          '<cmd>Trouble diagnostics toggle<cr>',
          desc = 'Diagnostics (Trouble)',
        },
        {
          '<leader>xX',
          '<cmd>Trouble diagnostics toggle filter.buf=0<cr>',
          desc = 'Buffer Diagnostics (Trouble)',
        },
        {
          '<leader>cs',
          '<cmd>Trouble symbols toggle focus=false<cr>',
          desc = 'Symbols (Trouble)',
        },
        {
          '<leader>cl',
          '<cmd>Trouble lsp toggle focus=false win.position=right<cr>',
          desc = 'LSP Definitions / references / ... (Trouble)',
        },
        {
          '<leader>xL',
          '<cmd>Trouble loclist toggle<cr>',
          desc = 'Location List (Trouble)',
        },
        {
          '<leader>xQ',
          '<cmd>Trouble qflist toggle<cr>',
          desc = 'Quickfix List (Trouble)',
        },
      },
    },
  },
}
