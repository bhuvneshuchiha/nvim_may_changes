return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    presets = {
      bottom_search = true,
      lsp_doc_border = true,
      long_message_to_split = true,
    },
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
      },
    },
  },
  config = function()
    require("noice").setup({
      cmdline = {
        view = "cmdline", -- for the classic command line view
        format = {
          cmdline = { pattern = "^:", icon = ":", lang = "vim" },
        },
      },
      messages = { -- Show messsgaes of filw written in cmdline itself.
        -- NOTE: If you enable messages, then the cmdline is enabled automatically.
        -- This is a current Neovim limitation.
        enabled = false, -- enables the Noice messages UI
        view = "notify", -- default view for messages
        view_error = "notify", -- view for errors
        view_warn = "notify", -- view for warnings
        view_history = "messages", -- view for :messages
        view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
      },
      message = {
        -- Messages shown by lsp servers
        enabled = true,
        view = "cmdline",
        opts = {},
      },
      commands = {
        history = {
          -- options for the message history that you get with `:Noice`
          view = "split",
          opts = { enter = true, format = "details" },
          filter = {
            any = {
              { event = "cmdline" },
              { error = true },
              { warning = true },
              { event = "msg_show", kind = { "" } },
              { event = "lsp", kind = "message" },
            },
          },
        },
      },
    })
  end,
  dependencies = {
    "MunifTanjim/nui.nvim",
    -- "rcarriga/nvim-notify",
  },
}