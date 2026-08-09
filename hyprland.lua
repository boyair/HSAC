local shell = "otter" -- options: "noctalia", "otter"
hl.config({
    render = {
        direct_scanout = true
    }
})
hl.config({
    general = {
            gaps_in  = 3,
            gaps_out = 6,

            border_size = 2,

            col = {
                active_border   = { colors = {"rgba(33ccffee)", "rgba(00ff99ee)"}, angle = 45 },
                inactive_border = "rgba(595959aa)",
            },

            -- Set to true to enable resizing windows by clicking and dragging on borders and gaps
            resize_on_border = false,

            -- Please see https://wiki.hypr.land/Configuring/Advanced-and-Cool/Tearing/ before you turn this on
            allow_tearing = true,

            layout = "master",
        },
        binds = {
            drag_threshold = 10 -- Fire a drag event only after dragging for more than 10px
        }})

local otter_services = {"otter-bar", " otter-wallpaper", " otter-notifications", " otter-osd", " otter-clip daemon", " otter-search", " otter-idle", " otter-polkit"}
    hl.on("hyprland.start", function ()
        if shell == "otter" then
            for i=1, #otter_services do
                hl.exec_cmd(otter_services[i])
            end
        elseif shell == "noctalia" then
            hl.exec_cmd("noctalia")
        elseif shell == "dms" then
            hl.exec_cmd("dms run")
            hl.exec_cmd("bash -c wl-paste ")-- Optional: Clipboard history
        end
        hl.exec_cmd("kdeconnect-indicator") --kde connect for connectivity
        end)
    hl.dsp.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")
-- somewhere in your Hyprland config
package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")

smw.setup({
    workspace_count = 10, -- This will create 5 persistent workspaces on each monitor at startup
})
require("binds/apps");
if shell == "otter" then
require("binds/otter");
elseif shell == "noctalia" then
require ("binds/noctalia")
elseif shell == "dms" then
    require("binds/dms")
    require("dms/colors")
    require("dms/layout")
    --require("dms/outputs")
    --require("dms/binds") -- for binds added via dms
end
require("binds/windowing");
require("binds/media");
require("binds/system");
require("monitor");
require("input");
require("animation");
