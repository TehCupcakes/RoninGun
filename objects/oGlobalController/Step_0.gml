// Make sure the audio is ready before starting
if (room == rTWIntro && audio_group_is_loaded(music) && !instance_exists(oTWIntro)) {
	instance_create(room_width / 2, room_height / 2, oTWIntro)
}

if (keyboard_check(vk_alt) && keyboard_check_pressed(vk_enter) || (keyboard_check(vk_enter) && keyboard_check_pressed(vk_alt))) {
	toggle_fullscreen()
	save_config()
}
