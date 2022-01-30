// Clear up resources by destroying enemies that leave the room
if (y > room_height + sprite_get_height(sprite_index)) {
	instance_destroy()
}
