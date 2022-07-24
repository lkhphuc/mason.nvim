local settings = require "mason.settings"
local path = require "mason-core.path"
local platform = require "mason-core.platform"
local notify = require "mason-core.notify"

local M = {}

---@param config MasonSettings | nil
function M.setup(config)
    notify("alpha branch is no longer active, switch to default branch (main).", vim.log.levels.WARN)
    if config then
        settings.set(config)
    end

    vim.env.PATH = path.bin_prefix() .. platform.path_sep .. vim.env.PATH

    require "mason.api.command"
end

return M
