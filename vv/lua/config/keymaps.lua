local map = vim.keymap.set

-- General
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Escape insert mode" })
map("n", "<C-s>", "<cmd>w<CR>", { desc = "Save file" })
map("n", "<C-a>", "ggVG", { desc = "Select all" })

-- Better indenting in visual mode
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move lines up and down
map("n", "<A-j>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Splits
map("n", "<leader>sv", "<cmd>vsplit<CR>", { desc = "Split vertical" })
map("n", "<leader>sh", "<cmd>split<CR>", { desc = "Split horizontal" })
map("n", "<leader>se", "<cmd>wincmd =<CR>", { desc = "Equalize splits" })
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close split" })

-- Buffers
map("n", "<leader>x", "<cmd>bd<CR>", { desc = "Close buffer" })
map("n", "<leader>X", "<cmd>bd!<CR>", { desc = "Force close buffer" })

-- LSP (extras on top of LazyVim defaults)
map("n", "<leader>ds", vim.lsp.buf.document_symbol, { desc = "Document symbols" })
map("n", "<leader>ws", vim.lsp.buf.workspace_symbol, { desc = "Workspace symbols" })
map("n", "<leader>li", "<cmd>LspInfo<CR>", { desc = "LSP info" })
map("n", "<leader>lr", "<cmd>LspRestart<CR>", { desc = "LSP restart" })

-- Git
map("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", { desc = "Preview hunk" })
map("n", "<leader>gB", "<cmd>Gitsigns blame_line<CR>", { desc = "Blame line" })
map("n", "<leader>gr", "<cmd>Gitsigns reset_hunk<CR>", { desc = "Reset hunk" })
map("n", "<leader>gR", "<cmd>Gitsigns reset_buffer<CR>", { desc = "Reset buffer" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Open diffview" })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory<CR>", { desc = "File history" })
map("n", "<leader>gD", "<cmd>DiffviewClose<CR>", { desc = "Close diffview" })

-- Trouble
map("n", "<leader>tt", "<cmd>Trouble diagnostics toggle<CR>", { desc = "Toggle trouble" })
map("n", "<leader>tl", "<cmd>Trouble loclist toggle<CR>", { desc = "Trouble loclist" })
map("n", "<leader>tq", "<cmd>Trouble qflist toggle<CR>", { desc = "Trouble quickfix" })

-- Harpoon
map("n", "<leader>ha", function()
  require("harpoon"):list():add()
end, { desc = "Harpoon add file" })
map("n", "<leader>hh", function()
  local harpoon = require("harpoon")
  harpoon.ui:toggle_quick_menu(harpoon:list())
end, { desc = "Harpoon menu" })
map("n", "<leader>h1", function()
  require("harpoon"):list():select(1)
end, { desc = "Harpoon file 1" })
map("n", "<leader>h2", function()
  require("harpoon"):list():select(2)
end, { desc = "Harpoon file 2" })
map("n", "<leader>h3", function()
  require("harpoon"):list():select(3)
end, { desc = "Harpoon file 3" })
map("n", "<leader>h4", function()
  require("harpoon"):list():select(4)
end, { desc = "Harpoon file 4" })
map("n", "<leader>hn", function()
  require("harpoon"):list():next()
end, { desc = "Harpoon next" })
map("n", "<leader>hp", function()
  require("harpoon"):list():prev()
end, { desc = "Harpoon prev" })

-- Noice
map("n", "<leader>nd", "<cmd>NoiceDismiss<CR>", { desc = "Dismiss noice notifications" })

-- Mason / Lazy
map("n", "<leader>pm", "<cmd>Mason<CR>", { desc = "Open Mason" })
map("n", "<leader>pl", "<cmd>Lazy<CR>", { desc = "Open Lazy" })

-- Quickfix
map("n", "<leader>qo", "<cmd>copen<CR>", { desc = "Open quickfix" })
map("n", "<leader>qc", "<cmd>cclose<CR>", { desc = "Close quickfix" })
map("n", "]q", "<cmd>cnext<CR>", { desc = "Next quickfix" })
map("n", "[q", "<cmd>cprev<CR>", { desc = "Prev quickfix" })

-- Misc
map("n", "<leader>tw", "<cmd>set wrap!<CR>", { desc = "Toggle word wrap" })
map("n", "<leader>tn", "<cmd>set number!<CR>", { desc = "Toggle line numbers" })
map("n", "<leader>tr", "<cmd>set relativenumber!<CR>", { desc = "Toggle relative numbers" })

-- Grug-far (find and replace)
map("n", "<leader>sr", "<cmd>GrugFar<CR>", { desc = "Search and replace" })
map("n", "<leader>sw", function()
  require("grug-far").open({ prefills = { search = vim.fn.expand("<cword>") } })
end, { desc = "Search and replace word under cursor" })

-- Persistence (sessions)
map("n", "<leader>qs", function()
  require("persistence").load()
end, { desc = "Restore session" })
map("n", "<leader>ql", function()
  require("persistence").load({ last = true })
end, { desc = "Restore last session" })
map("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Don't save current session" })

-- LSP 
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover docs" })
map("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>rn", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Prev diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })
map("n", "<leader>cd", vim.diagnostic.open_float, { desc = "Line diagnostics" })

-- Snacks
map("n", "<leader>gg", function() Snacks.lazygit() end, { desc = "Lazygit" })
map("n", "<leader>gb", function() Snacks.git.blame_line() end, { desc = "Git blame line" })
map("n", "<leader>un", function() Snacks.notifier.hide() end, { desc = "Dismiss notifications" })

-- Buffers
map("n", "<S-l>", "<cmd>bnext<CR>", { desc = "Next buffer" })
map("n", "<S-h>", "<cmd>bprev<CR>", { desc = "Prev buffer" })

vim.keymap.set("n", "<leader>uC", function()
  require("telescope.builtin").colorscheme({ enable_preview = true })
end, { desc = "Switch colorscheme" })

map("n", "<leader>z", "<cmd>ZenMode<CR>", { desc = "Toggle zen mode" })
map("n", "<leader>bd", "<cmd>Alpha<CR>", { desc = "Go back to dashboard" })
