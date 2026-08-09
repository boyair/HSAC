local mainMod = "SUPER" -- Sets "Windows" key as main modifier
local shell

local browser = "firefox"
local terminal = "cosmic-term"
local file_manager = "cosmic-files"
local system_monitor = "shell" -- use "shell" for shell provided system monitor (not available for noctalia)

--if system_monitor == "shell" then
--    if shell == "dms" then
--        system_monitor =  "dms ipc call processlist focusOrToggle"
--    end
--end

hl.bind(mainMod .. " + B",  hl.dsp.exec_cmd(browser))
hl.bind(mainMod .. " + D",  hl.dsp.exec_cmd(file_manager))
hl.bind(mainMod .. " + Return", hl.dsp.exec_cmd(terminal))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("dms ipc call processlist focusOrToggle"))
