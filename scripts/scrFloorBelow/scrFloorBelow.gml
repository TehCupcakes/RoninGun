function scrFloorBelow() {
	var xOffset = sprite_get_xoffset(sprite_index)
	return collision_rectangle(x - xOffset, y, x + sprite_get_width(sprite_index) - xOffset, y+1, oFloor, false, true)
}
