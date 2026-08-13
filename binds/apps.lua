local browser = "firefox"
local terminal = "cosmic-term"
local file_manager = "cosmic-files"
local system_monitor = "otter-monitor" -- use "shell" or "" for shell provided system monitor (not available for noctalia)

-- assign shell specific system monitor
if system_monitor == "shell" or system_monitor == "" then
    if Shell == "dms" then
        system_monitor =  "dms ipc call processlist focusOrToggle"
    elseif Shell == "otter"  then
        system_monitor =  "otter-monitor"
    end
end

hl.bind(MainMod .. " + B",  hl.dsp.exec_cmd(browser))
hl.bind(MainMod .. " + D",  hl.dsp.exec_cmd(file_manager))
hl.bind(MainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(MainMod .. " + M", hl.dsp.exec_cmd(system_monitor))
