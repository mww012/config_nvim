vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)
vim.keymap.set('n', '<tab>t', function () vim.cmd('NeoTermToggle') end)
vim.keymap.set('t', '<tab>t', function () vim.cmd('NeoTermEnterNormal') end)

--- Debugging ---
vim.keymap.set('n', '<leader>dui', function () require("dapui").toggle() end)
vim.keymap.set('n', '<leader>b', function () require("dap").toggle_breakpoint() end)
vim.keymap.set('n', '<F17>', function () require("dap").close() end) -- Shift+F5 maps to F17, Ctrl+F5 maps to F29
vim.keymap.set('n', '<F5>', function () require("dap").continue() end)
vim.keymap.set('n', '<F6>', function () require("dap").step_over() end)
vim.keymap.set('n', '<F7>', function () require("dap").step_into() end)
vim.keymap.set('n', '<F8>', function () require("dap").repl.open() end)

---/---
