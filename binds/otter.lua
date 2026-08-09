local mainMod = "SUPER" -- Sets "Windows" key as main modifier

hl.bind(mainMod .. " + SUPER_L", hl.dsp.exec_cmd("otter-launcher"))
hl.bind(mainMod .. " + V", hl.dsp.exec_cmd("otter-clip popup"))
hl.bind(mainMod .. " + M", hl.dsp.exec_cmd("otter-monitor"))
hl.bind("Print", hl.dsp.exec_cmd("otter-screenshot --freeze")) --capture region
hl.bind(mainMod .. "+ Print", hl.dsp.exec_cmd("otter-screenshot --active")) -- capture window
hl.bind(mainMod .. "+ SHIFT + Print", hl.dsp.exec_cmd("otter-screenshot --fullscreen")) -- capture screen
