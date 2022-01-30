if (!dead) {
	image_xscale = hsp == 0 ? 1 : sign(hsp)
	if (hsp == 0) {
		sprite_index = sEnemyStill
	} else if (sprite_index != sEnemyRun) {
		sprite_index = sEnemyRun
	}
	if (sprite_index = sEnemyRun) {
		image_speed = abs(hsp) / maxMoveSpeed * 0.5
	}
}

// Clear up resources by destroying enemies that leave the room
if (y > room_height + sprite_get_height(sprite_index)) {
	instance_destroy()
}
