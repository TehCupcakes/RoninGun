function scrFloorBelow() {
	return collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, oFloor, true, true) ||
		(collision_rectangle(bbox_left, bbox_bottom, bbox_right, bbox_bottom+1, oSlope, true, true) && !place_meeting(x, y, oSlope))
}
