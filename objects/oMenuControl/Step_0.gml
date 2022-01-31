if (keyboard_check_pressed(vk_enter)) {
	room_goto(rGame)
	audio_stop_sound(musicMainMenu)
}

if (keyboard_check_pressed(ord("M"))) {
	if (global.musicVolume > 0) {
		scrSetSfxVolume(0)
		scrSetMusicVolume(0)
	} else {
		scrSetSfxVolume(0.5)
		scrSetMusicVolume(0.5)
	}
}
