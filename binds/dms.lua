local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + SUPER_L", hl.dsp.exec_cmd("dms ipc call spotlight toggle"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("dms ipc call clipboard toggle"))
hl.bind(mainMod .. " + comma", hl.dsp.exec_cmd("dms ipc call settings focusOrToggle"))
hl.bind(mainMod .. " + N", hl.dsp.exec_cmd("dms ipc call notifications toggle"))
hl.bind(mainMod .. " + Y", hl.dsp.exec_cmd("dms ipc call dankdash wallpaper"))
hl.bind(mainMod .. " + TAB", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
hl.bind(mainMod .. " + W", hl.dsp.exec_cmd("dms ipc call hypr toggleOverview"))
hl.bind("Print", hl.dsp.exec_cmd("dms ipc call quickCapture screenshot region edit"))
