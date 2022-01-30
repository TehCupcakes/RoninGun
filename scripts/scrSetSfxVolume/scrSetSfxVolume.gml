function scrSetSfxVolume(value) {
	global.sfxVolume = value
	audio_group_set_gain(sfx, value, 0)
}