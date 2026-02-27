return {
  "Pocco81/auto-save.nvim",
  event = { "InsertLeave", "TextChanged" }, -- Load when you start typing
  opts = {
    enabled = true, -- start auto-save when the plugin is loaded
    execution_message = {
      message = function()
        return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
      end,
      cleaning_interval = 1250, -- (milliseconds) how long to show the message
    },
    trigger_events = { "InsertLeave", "TextChanged" }, -- vim events that trigger auto-save
    -- function that determines whether to save the current buffer or not
    condition = function(buf)
      local fn = vim.fn
      local utils = require("auto-save.utils.data")

      if utils.not_in(fn.getbufvar(buf, "&filetype"), { "neo-tree", "TelescopePrompt" }) then
        return true -- met condition, save
      end
      return false -- can't save
    end,
    write_all_buffers = false, -- write all open buffers or only the current one
    debounce_delay = 135, -- saves after 135ms of inactivity
  },
}
