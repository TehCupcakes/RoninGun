if (!dead) {
	image_xscale = hsp == 0 ? 1 : sign(hsp)
}

// Clear up resources by destroying enemies that leave the room
if (y > room_height + sprite_get_height(sprite_index)) {
	instance_destroy()
}
