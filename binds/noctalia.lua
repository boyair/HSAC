hl.bind(MainMod .. " + SUPER_L", hl.dsp.exec_cmd("noctalia msg panel-toggle launcher"))
hl.bind(MainMod .. " + V", hl.dsp.exec_cmd("noctalia msg panel-toggle clipboard"))
hl.bind("Print", hl.dsp.exec_cmd(" noctalia msg screenshot-region")) --capture region
hl.bind(MainMod .. "+ SHIFT + Print", hl.dsp.exec_cmd(" noctalia msg screenshot-fullscreen ")) -- capture screen
