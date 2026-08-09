
hl.bind(MainMod .. " + SUPER_L", hl.dsp.exec_cmd("otter-launcher"))
hl.bind(MainMod .. " + V", hl.dsp.exec_cmd("otter-clip popup"))
hl.bind("Print", hl.dsp.exec_cmd("otter-screenshot --freeze")) --capture region
hl.bind(MainMod .. "+ Print", hl.dsp.exec_cmd("otter-screenshot --active")) -- capture window
hl.bind(MainMod .. "+ SHIFT + Print", hl.dsp.exec_cmd("otter-screenshot --fullscreen")) -- capture screen
