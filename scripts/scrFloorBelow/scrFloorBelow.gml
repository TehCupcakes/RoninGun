function scrFloorBelow() {
	var floorTouched = collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+(IS_HTML5 ? 2 : 1), oFloor, false, true)
	return floorTouched != noone && (y < floorTouched.y || object_index == oBarrel)
}
