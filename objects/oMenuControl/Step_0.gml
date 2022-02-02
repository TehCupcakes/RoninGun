if (keyboard_check_pressed(vk_enter)) {
	save_config()
	audio_stop_sound(musicMainMenu)
	room_goto(rGame)
}
