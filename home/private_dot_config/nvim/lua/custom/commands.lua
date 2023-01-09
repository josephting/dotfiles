local create_cmd = vim.api.nvim_create_user_command

create_cmd("SudoWrite", function()
  require('custom.utils').sudo_write()
end, {})
