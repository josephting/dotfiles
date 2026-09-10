local keymap = vim.api.nvim_set_keymap

local opts = { silent = true }
local function opts_desc(desc, callback)
  return {
    silent = true,
    desc = desc,
    callback = callback,
  }
end

if pcall(require, "vscode.notify") then
  vim.notify = require("vscode").notify
end

local function notify(cmd)
  return string.format("<cmd>lua require'vscode'.action('%s')<CR>", cmd)
end

-- LSP related keymappings
keymap("n", "<leader>xr", notify "references-view.findReferences", opts)
keymap("n", "<leader>xd", notify "workbench.actions.view.problems", opts)
keymap("n", "gr", notify "editor.action.goToReferences", opts)
keymap("n", "<leader>w]", notify "editor.action.revealDefinitionAside", opts)
keymap("n", "<leader>ln", notify "editor.action.rename", opts)
keymap("n", "<leader>lf", notify "editor.action.formatDocument", opts)
keymap("v", "<leader>lf", notify "editor.action.formatSelection", opts)

-- search/find related keymappings
keymap("n", "<leader>fg", notify "workbench.action.findInFiles", opts)
keymap("n", "<leader>fc", notify "workbench.action.showCommands", opts)
keymap("v", "<leader>fc", notify "workbench.action.showCommands", opts)
keymap("n", "<leader>ff", notify "workbench.action.quickOpen", opts)

-- editor UI toggle keymappings
keymap("n", "<leader>tp", notify "workbench.action.togglePanel", opts)
keymap("n", "<leader>ts", notify "workbench.action.toggleSidebarVisibility", opts)
keymap("n", "<leader>ta", notify "workbench.action.toggleAuxiliaryBar", opts)
keymap("n", "<leader>tt", notify "workbench.action.terminal.toggleTerminal", opts)
keymap("n", "<leader>tn", notify "settings.cycle.lineNumbers", opts)

-- editor UI focus keymappings
keymap("n", "<leader>ss", notify "workbench.action.focusSideBar", opts)
keymap("n", "<leader>sp", notify "workbench.action.focusPanel", opts)
keymap("n", "<leader>e", notify "workbench.explorer.fileView.focus", opts)

-- window keymappings
keymap("n", "<leader>wn", notify "workbench.action.focusNextGroup", opts)
keymap("n", "<leader>wp", notify "workbench.action.focusPreviousGroup", opts)
keymap("n", "<leader>wh", notify "workbench.action.focusLeftGroup", opts)
keymap("n", "<leader>wj", notify "workbench.action.focusBelowGroup", opts)
keymap("n", "<leader>wk", notify "workbench.action.focusAboveGroup", opts)
keymap("n", "<leader>wl", notify "workbench.action.focusRightGroup", opts)
keymap("n", "<leader>w=", notify "workbench.action.evenEditorWidths", opts)
keymap("n", "<leader>w=", notify "workbench.action.evenEditorWidths", opts)
keymap("n", "<leader>wH", notify "workbench.action.moveActiveEditorGroupLeft", opts)
keymap("n", "<leader>wJ", notify "workbench.action.moveActiveEditorGroupDown", opts)
keymap("n", "<leader>wK", notify "workbench.action.moveActiveEditorGroupUp", opts)
keymap("n", "<leader>wL", notify "workbench.action.moveActiveEditorGroupRight", opts)
keymap("n", "<leader>ws", notify "workbench.action.splitEditorRight", opts)
keymap("n", "<leader>wv", notify "workbench.action.splitEditorDown", opts)
keymap("n", "<leader>wq", notify "workbench.action.closeActiveEditor", opts)
keymap("n", "<leader>w+", notify "workbench.action.increaseViewHeight", opts)
keymap("n", "<leader>w-", notify "workbench.action.decreaseViewHeight", opts)
keymap("n", "<leader>w>", notify "workbench.action.increaseViewWidth", opts)
keymap("n", "<leader>w<", notify "workbench.action.decreaseViewWidth", opts)

keymap("n", "<leader><tab>t", notify "workbench.action.createTerminalEditor", opts)
