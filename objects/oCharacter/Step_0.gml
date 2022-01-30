var yToMove = floor(vsp)
var xToMove = floor(min(abs(hsp), maxMoveSpeed) * sign(hsp))
while (abs(xToMove) > 0 || abs(yToMove) > 0) {
	if (xToMove != 0)
	{
		if (place_meeting(x + sign(xToMove), y, oFloor))
	    {
	        //Hit a wall
	        xToMove = 0
	    }
		else
		{
			x += sign(xToMove)
			xToMove -= sign(xToMove)
		}
	}

	if (yToMove != 0) {
		if (vsp > 0 && scrFloorBelow()) {
			yToMove = 0
			ground = true
		} else {
			y += sign(yToMove)
			yToMove -= sign(yToMove)
		}
	}
}
vsp += vGravity

// After applying all movement, check if they are on the ground
if (scrFloorBelow()) {
	if (vsp >= 0) {
		vsp = 0
		ground = true
	}
} else {
	ground = false
}
