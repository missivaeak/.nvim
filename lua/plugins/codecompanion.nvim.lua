return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    strategies = {
      chat = { adapter = "gemini" },
      inline = { adapter = "gemini" },
      agent = { adapter = "gemini" },
    },
    adapters = {
      -- We define "gemini" as a name, then pull the specific ACP module
      gemini = function()
        return require("codecompanion.adapters.acp.gemini_cli").extend({
          -- You can customize the model or CLI behavior here
          schema = {
            model = {
              -- default = "gemini-2.0-flash",
            },
          },
          env = {
            api_key = os.getenv("GEMINI_API_KEY"),
          },
          defaults = {
            auth_method = "oauth_personal",
          },
        })
      end,
    },
  },
}
