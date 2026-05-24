return {
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
			"nvim-neotest/nvim-nio",
			"theHamsta/nvim-dap-virtual-text",
			"mfussenegger/nvim-dap-python",
		},
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")

			vim.schedule(function()
				dapui.setup({})
			end)
			require("nvim-dap-virtual-text").setup({})

			dap.listeners.before.attach.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.launch.dapui_config = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated.dapui_config = function()
				dapui.close()
			end
			dap.listeners.before.event_exited.dapui_config = function()
				dapui.close()
			end

			require("dap-python").setup("C:\\Python312\\python.exe")

			local js_debug_path = vim.fn.stdpath("data")
				.. "/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js"

			dap.adapters["pwa-node"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					args = { js_debug_path, "${port}" },
				},
			}

			dap.adapters["pwa-chrome"] = {
				type = "server",
				host = "localhost",
				port = "${port}",
				executable = {
					command = "node",
					args = { js_debug_path, "${port}" },
				},
			}

			for _, lang in ipairs({ "javascript", "typescript", "javascriptreact", "typescriptreact", "svelte" }) do
				dap.configurations[lang] = {
					{
						type = "pwa-node",
						request = "launch",
						name = "Launch file",
						program = "${file}",
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-node",
						request = "attach",
						name = "Attach",
						processId = require("dap.utils").pick_process,
						cwd = "${workspaceFolder}",
					},
					{
						type = "pwa-chrome",
						request = "launch",
						name = "Launch Chrome",
						url = "http://localhost:5173",
						webRoot = "${workspaceFolder}",
					},
				}
			end

			local map = vim.keymap.set
			map("n", "<leader>db", dap.toggle_breakpoint, { desc = "Toggle breakpoint" })
			map("n", "<leader>dB", function()
				dap.set_breakpoint(vim.fn.input("Breakpoint condition: "))
			end, { desc = "Conditional breakpoint" })
			map("n", "<leader>dc", dap.continue, { desc = "Continue" })
			map("n", "<leader>dn", dap.step_over, { desc = "Step over" })
			map("n", "<leader>di", dap.step_into, { desc = "Step into" })
			map("n", "<leader>do", dap.step_out, { desc = "Step out" })
			map("n", "<leader>dq", dap.terminate, { desc = "Terminate" })
			map("n", "<leader>dr", function()
				dap.repl.open()
			end, { desc = "Open REPL" })
			map("n", "<leader>du", dapui.toggle, { desc = "Toggle DAP UI" })
		end,
	},
}
