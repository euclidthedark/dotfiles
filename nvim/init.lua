require('euclidthedark')
-- until I figure out how to configure copilot better
vim.cmd(':Copilot disable')
vim.keymap.set('n', '<leader>hh', function() vim.cmd(':CopilotChat') end)
