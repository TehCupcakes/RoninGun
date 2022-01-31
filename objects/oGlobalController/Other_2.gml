randomize()
game_set_speed(60, gamespeed_fps)

audio_group_load(sfx)
audio_group_load(music)

global.sfxVolume = 0.5
global.musicVolume = 0.5
scrSetSfxVolume(global.sfxVolume)
scrSetMusicVolume(global.musicVolume)

global.font = font_add("RyujinAttack.ttf", 64, false, false, 32, 128)
global.menuFont = font_add("KarmaticArcade.ttf", 31, false, false, 32, 128)
