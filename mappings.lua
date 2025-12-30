---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },
    ["<leader>mp"] = {
      "<cmd> MarkdownPreview <CR>",
      "Markdown Preview",
    },
    ["<leader>fk"] = {
      "<cmd> Telescope keymaps <CR>",
      "Telescope keymaps",
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
}

-- more keybinds!

return M
