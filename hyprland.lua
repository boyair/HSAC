Shell = "otter" -- options: "noctalia", "otter", "dms"
MainMod = "SUPER" -- main modifier key (for shortcuts)

-- monitor names
-- check yours running 'hyprctl monitors all' in a terminal
MainMonitor = "HDMI-A-1"
SeconderyMonitor = "DVI-D-1"

Layout = "master" -- see https://wiki.hypr.land/Configuring/Layouts/

GPU = "nvidia" -- set your GPU manufacturer (not really relevant unless you use nvidia)

SMW = require("plugins.split-monitor-workspaces") -- ignore this (plugin related)

local function include_optional(file)
    pcall(require, file)
end

hl.config({
    render = {
        direct_scanout = false
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

            layout = Layout,
        },
        binds = {
            drag_threshold = 10 -- Fire a drag event only after dragging for more than 10px
        }})

local otter_services = {"otter-bar", " otter-wallpaper", " otter-notifications", " otter-osd", " otter-clip daemon", " otter-search", " otter-idle", " otter-polkit"}
    hl.on("hyprland.start", function ()
        if Shell == "otter" then
            for i=1, #otter_services do
                hl.exec_cmd(otter_services[i])
            end
        elseif Shell == "noctalia" then
            hl.exec_cmd("noctalia")
        elseif Shell == "dms" then
            hl.exec_cmd("dms run")
            hl.exec_cmd("bash -c wl-paste ")-- Optional: Clipboard history
        end
        hl.exec_cmd("kdeconnect-indicator") --kde connect for connectivity
        end)
    hl.dsp.exec_cmd("dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP")

    package.path = package.path .. ";./?.lua;./?/init.lua"

SMW.setup({
    workspace_count = 10, -- This will create 5 persistent workspaces on each monitor at startup
})
require("binds/apps");
require("binds/windowing");
require("binds/media");
require("binds/system");
require("monitor");
require("input");
require("animation");


-- add shell specific files
if Shell == "otter" then
require("binds/otter");
elseif Shell == "noctalia" then
require ("binds/noctalia")
elseif Shell == "dms" then
    require("binds/dms")
    -- include auto generated dms settings.
    include_optional("dms/colors")
    include_optional("dms/layout")
    include_optional("dms/outputs")
    include_optional("dms/binds")
end
