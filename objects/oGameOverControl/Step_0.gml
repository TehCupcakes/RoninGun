if (keyboard_check_pressed(vk_enter)) {
	save_config()
	global.score = 0
	room_goto(rGame)
}
