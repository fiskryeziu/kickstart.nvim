-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'windwp/nvim-ts-autotag',
    opts = {},
    config = function()
      require('nvim-ts-autotag').setup {
        opts = {
          -- Defaults
          enable_close = true, -- Auto close tags
          enable_rename = true, -- Auto rename pairs of tags
          enable_close_on_slash = false, -- Auto close on trailing </
        },
        -- Also override individual filetype configs, these take priority.
        -- Empty by default, useful if one of the "opts" global settings
        -- doesn't work well in a specific filetype
        per_filetype = {
          ['html'] = {
            enable_close = false,
          },
          ['tsx'] = {
            enable_close = false,
          },
          ['jsx'] = {
            enable_close = false,
          },
        },
      }
    end,
  },

  {
    'mg979/vim-visual-multi',
    branch = 'master',
    config = function() end,
  },

  {
    'numToStr/Comment.nvim',
    config = function()
      local prehook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
      require('Comment').setup {
        padding = true,
        sticky = true,
        ignore = '^$',
        toggler = {
          line = 'gcc',
          block = 'gbc',
        },
        opleader = {
          line = 'gc',
          block = 'gb',
        },
        extra = {
          above = 'gcO',
          below = 'gco',
          eol = 'gcA',
        },
        mappings = {
          basic = true,
          extra = true,
          extended = false,
        },
        pre_hook = prehook,
        post_hook = nil,
      }
    end,
    event = 'BufReadPre',
    lazy = false,
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
  },

  {
    'christoomey/vim-tmux-navigator', -- The plugin repository
    cmd = { -- Commands associated with tmux navigation
      'TmuxNavigateLeft',
      'TmuxNavigateDown',
      'TmuxNavigateUp',
      'TmuxNavigateRight',
      'TmuxNavigatePrevious',
    },
    keys = { -- Key bindings for tmux pane navigation
      { '<c-h>', '<cmd><C-U>TmuxNavigateLeft<cr>' }, -- Ctrl-h to navigate left
      { '<c-j>', '<cmd><C-U>TmuxNavigateDown<cr>' }, -- Ctrl-j to navigate down
      { '<c-k>', '<cmd><C-U>TmuxNavigateUp<cr>' }, -- Ctrl-k to navigate up
      { '<c-l>', '<cmd><C-U>TmuxNavigateRight<cr>' }, -- Ctrl-l to navigate right
      { '<c-\\>', '<cmd><C-U>TmuxNavigatePrevious<cr>' }, -- Ctrl-\ to navigate to the previous pane
    },
  },

  {
    'tpope/vim-fugitive',
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
  },
  {
    'luckasRanarison/tailwind-tools.nvim',
    name = 'tailwind-tools',
    build = ':UpdateRemotePlugins',
    dependencies = {
      'nvim-treesitter/nvim-treesitter',
      'nvim-telescope/telescope.nvim', -- optional
      'neovim/nvim-lspconfig', -- optional
    },
    opts = {}, -- your configuration
  },
}
