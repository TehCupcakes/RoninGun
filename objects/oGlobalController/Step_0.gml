if (room == rTWIntro && audio_group_is_loaded(music) && !instance_exists(oTWIntro)) {
	instance_create(room_width / 2, room_height / 2, oTWIntro)
}