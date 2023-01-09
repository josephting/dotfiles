local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
  },

  i = {
    ["kj"] = { "<ESC>", "escape vim" },
  },
}

return M
