-- Media keys (play/pause, prev, next)
hl.bind("F7", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("F6", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("F8", hl.dsp.exec_cmd("playerctl next"))

-- XF86 media keys
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"))
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"))
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"))

-- Volume controls
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 3%-"))
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 3%+"))
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
