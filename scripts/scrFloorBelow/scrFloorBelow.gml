function scrFloorBelow() {
	return collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, oFloor, false, true)
}
