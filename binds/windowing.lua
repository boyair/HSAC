

hl.bind(MainMod .. " + Q", hl.dsp.window.close())

if Layout == "scrolling" then
    hl.bind(MainMod .. " + F", hl.dsp.layout("colresize 1.0"))
else
    hl.bind(MainMod .. " + F", hl.dsp.window.fullscreen({ mode = "maximized", layout_aware = true }))
end

hl.bind(MainMod .. " + SHIFT + F", hl.dsp.window.fullscreen({mode = "fullscreen",layout_aware = true}))
hl.bind(MainMod .. " + G", hl.dsp.window.float())

if Layout == "scrolling" then
    hl.bind(MainMod .. " + R", hl.dsp.layout("colresize +conf"))
end

hl.bind(MainMod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(MainMod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- move windows using arrow/vim keys
local direction_keys = {"left", "right", "up", "down"}
local vim_direction_keys = {"h", "l", "k", "j"}
for i = 1, #direction_keys do

    --apply arrows
    hl.bind(MainMod .. " + " .. direction_keys[i],  hl.dsp.focus({ direction = direction_keys[i] }))
    hl.bind(MainMod .. " + SHIFT + " .. direction_keys[i],  hl.dsp.window.move({ direction = direction_keys[i] }))

    --apply vim keys
    hl.bind(MainMod .. " + " .. vim_direction_keys[i],  hl.dsp.focus({ direction = direction_keys[i] }))
    hl.bind(MainMod .. " + SHIFT + " .. vim_direction_keys[i],  hl.dsp.window.move({ direction = direction_keys[i] }))
end



for i = 1, SMW.get_amount_of_workspaces() do
    local n = tostring(i)
    if n == "10" then n = "0" end -- Optional if you configured 10 workspaces: bind workspace 10 to SUPER + 0
    -- Switch to the Nth workspace on the currently focused monitor.
    hl.bind(MainMod .. " +" .. n, SMW.workspace(n))
    -- Move the active window to the Nth workspace on the currently focused monitor silently (no focus change).
    hl.bind(MainMod .. " + ALT +"   .. n, SMW.move_to_workspace_silent(n))
    hl.bind(MainMod .. " + SHIFT +" .. n, SMW.move_to_workspace(n))
end

-- for no plugin use regular workspace switching
--for i = 1, 9, 1 do
--    hl.bind(mainMod .." + " .. tostring(i), hl.dsp.focus({ workspace = tostring(i) }))
--    hl.bind(mainMod .."+ SHIFT + " .. tostring(i), hl.dsp.window.move({ workspace = tostring(i), silent = true }))
--end
