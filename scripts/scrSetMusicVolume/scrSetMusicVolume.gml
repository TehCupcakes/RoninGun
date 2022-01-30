function scrSetMusicVolume(value) {
	global.musicVolume = value
	audio_group_set_gain(music, value, 0)
}