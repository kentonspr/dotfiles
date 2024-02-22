return {
  "CopilotC-Nvim/CopilotChat.nvim",
  opts = {
    show_help = "yes", -- Show help text for CopilotChatInPlace, default: yes
    debug = false, -- Enable or disable debug mode, the log file will be in ~/.local/state/nvim/CopilotChat.nvim.log
    disable_extra_info = "no", -- Disable extra information (e.g: system prompt) in the response.
    language = "English", -- Copilot answer language settings when using default prompts. Default language is English.
    -- proxy = "socks5://127.0.0.1:3000", -- Proxies requests via https or socks.
    -- temperature = 0.1,
    prompts = {
      Explain = "Explain how it works.",
      Review = "Review the following code and provide concise suggestions.",
      Tests = "Briefly explain how the selected code works, then generate unit tests.",
      Refactor = "Refactor the code to improve clarity and readability.",
    },
  },
  build = function()
    vim.notify("Please update the remote plugins by running ':UpdateRemotePlugins', then restart Neovim.")
  end,
  event = "VeryLazy",
  dependencies = {
    { "nvim-telescope/telescope.nvim" }, -- Use telescope for help actions
    { "nvim-lua/plenary.nvim" },
  },
  keys = {
    { "<leader>ccc", ":CopilotChat ", desc = "CopilotChat - Prompt" },
    { "<leader>cce", ":CopilotChatExplain ", desc = "CopilotChat - Explain code" },
    { "<leader>cci", ":CopilotChatFixDiagnostic<cr>", desc = "CopilotChatFixDiagnostic" },
    { "<leader>cci", ":CopilotChatInPlace<cr>", desc = "CopilotChatInPlace" },
    { "<leader>cct", "<cmd>CopilotChatTests<cr>", desc = "CopilotChat - Generate tests" },
    { "<leader>ccr", "<cmd>CopilotChatReview<cr>", desc = "CopilotChat - Review code" },
    { "<leader>ccR", "<cmd>CopilotChatRefactor<cr>", desc = "CopilotChat - Refactor code" },
    { "<leader>ccv", ":CopilotChatVsplitToggle<cr>", desc = "CopilotChatVsplitToggle" },
    -- Show help actions with telescope
    {
      "<leader>cch",
      function()
        require("CopilotChat.code_actions").show_help_actions()
      end,
      desc = "CopilotChat - Help actions",
    },
    -- Show prompts actions with telescope
    {
      "<leader>ccp",
      function()
        require("CopilotChat.code_actions").show_prompt_actions()
      end,
      desc = "CopilotChat - Help actions",
    },
    {
      "<leader>ccp",
      ":lua require('CopilotChat.code_actions').show_prompt_actions(true)<CR>",
      mode = "x",
      desc = "CopilotChat - Prompt actions",
    },
  },
}
