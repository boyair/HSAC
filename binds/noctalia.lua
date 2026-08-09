local mainMod = "SUPER" -- Sets "Windows" key as main modifier

local system_monitor = "cosmic-monitor"

hl.bind(mainMod .. " + SUPER_L", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd(system_monitor))
hl.bind("Print", hl.dsp.exec_cmd(" noctalia msg screenshot-region")) --capture region
hl.bind(mainMod .. "+ SHIFT + Print", hl.dsp.exec_cmd(" noctalia msg screenshot-fullscreen ")) -- capture screen
