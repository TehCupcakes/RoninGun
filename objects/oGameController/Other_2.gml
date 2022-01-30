randomize()
game_set_speed(60, gamespeed_fps)

audio_group_load(sfx)
audio_group_load(music)

global.sfxVolume = 0.5
global.musicVolume = 0.5
audio_group_set_gain(sfx, global.muteAudio ? 0 : global.sfxVolume, 0)
audio_group_set_gain(music, global.muteAudio ? 0 : global.musicVolume, 0)

// This examples scales the GUI to 2x
display_set_gui_size(global.view_wview * 2, global.view_hview * 2)

global.font = font_add("RyujinAttack.ttf", 64, false, false, 32, 128)
