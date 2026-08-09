local mainMod = "SUPER" -- Sets "Windows" key as main modifier
package.path = package.path .. ";./?.lua;./?/init.lua"
local smw = require("plugins.split-monitor-workspaces")


hl.bind(mainMod .. " + Q", hl.dsp.window.close())
hl.bind(mainMod .. " + F", hl.dsp.layout("colresize 1.0"))
hl.bind(mainMod .. " + R", hl.dsp.layout("colresize +conf"))
hl.bind(mainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({mode = "fullscreen",layout_aware = true}))

hl.bind(mainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })


local direction_keys = {"left", "right", "up", "down"}
local vim_direction_keys = {"h", "l", "k", "j"}
for i = 1, #direction_keys do
    --apply arrows
    hl.bind(mainMod .. " + " .. direction_keys[i],  hl.dsp.focus({ direction = direction_keys[i] }))
    hl.bind(mainMod .. " + SHIFT + " .. direction_keys[i],  hl.dsp.window.move({ direction = direction_keys[i] }))
    --apply vim keys
    hl.bind(mainMod .. " + " .. vim_direction_keys[i],  hl.dsp.focus({ direction = direction_keys[i] }))
    hl.bind(mainMod .. " + SHIFT + " .. vim_direction_keys[i],  hl.dsp.window.move({ direction = direction_keys[i] }))
end



for i = 1, smw.get_amount_of_workspaces() do
    local n = tostring(i)
    if n == "10" then n = "0" end -- Optional if you configured 10 workspaces: bind workspace 10 to SUPER + 0
    -- Switch to the Nth workspace on the currently focused monitor.
    hl.bind(mainMod .. " +" .. n, smw.workspace(n))
    -- Move the active window to the Nth workspace on the currently focused monitor silently (no focus change).
    hl.bind(mainMod .. " + ALT +"   .. n, smw.move_to_workspace_silent(n))
    hl.bind(mainMod .. " + SHIFT +" .. n, smw.move_to_workspace(n))
end

-- for no plugin use regular workspace switching
--for i = 1, 9, 1 do
--    hl.bind(mainMod .." + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
--    hl.bind(mainMod .."+ SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i), silent = true }))
--end
