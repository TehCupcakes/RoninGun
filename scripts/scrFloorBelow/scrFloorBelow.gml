function scrFloorBelow() {
	var floorTouched = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, oFloor, false, true)
	return floorTouched != noone && (y < floorTouched.y || object_index == oBarrel)
}
