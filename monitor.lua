-- please modify based on your monitor setup: https://wiki.hypr.land/Configuring/Basics/Monitors/
-- if you are using dms as your shell you can modify your monitors from settings instead.

hl.monitor({
  output = MainMonitor,
  mode = "1920x1080@144",
  position = "0x0",
  scale = 1,
})

hl.monitor({
  output = SeconderyMonitor,
  mode = "1920x1080@60",
  position = "1920x0",
  scale = 1,
})
