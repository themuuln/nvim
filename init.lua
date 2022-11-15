require("impatient")
require("themuuln.base")
require("themuuln.highlights")
require("themuuln.maps")
require("themuuln.plugins")
require("themuuln.windows")

local has = vim.fn.has
local is_mac = has("macunix")
local is_win = has("win32")

if is_mac then
	require("themuuln.macos")
end
if is_win then
	require("themuuln.windows")
end
