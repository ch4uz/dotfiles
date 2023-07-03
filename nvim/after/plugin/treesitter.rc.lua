local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "javascript",
    "typescript",
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },

  textobjects = {
    lsp_interop = { enable = true },
    select = {
      enable = true,
      keymaps = {
        ["al"] = "@loop.outer",
        ["il"] = "@loop.inner",
        ["ab"] = "@block.outer",
        ["ib"] = "@block.inner",
        ["ac"] = "@class.outer",
        ["ic"] = "@class.inner",
        ["af"] = "@function.outer",
        ["if"] = "@function.inner",
        ["ap"] = "@parameter.outer",
        ["ip"] = "@parameter.inner",
        ["ak"] = "@comment.outer",
        ["ia"] = "@assignment.inner",
        ["aa"] = "@assignment.outer"
      },
    },
    swap = {
      enable = true,
      swap_next = {
        ["<Leader>cs"] = "@parameter.inner",
      },
      swap_previous = {
        ["<Leader>cs"] = "@parameter.inner",
      },
    },
    move = {
      enable = true,
      set_jumps = true,
      goto_next_start = { ["]]"] = "@function.outer" },
      goto_next_end = { ["]}"] = "@function.outer" },
      goto_previous_start = { ["[["] = "@function.outer" },
      goto_previous_end = { ["[{"] = "@function.outer" },
    }
  }
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
