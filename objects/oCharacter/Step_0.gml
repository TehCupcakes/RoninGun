// Check if they're on the ground. Don't bother with gravity if they are
if (vsp >= 0 && place_meeting(x, y+1, oFloor)) {
	vsp = 0
	ground = true
}

if (vsp != 0) {
	ground = false
	var moved = 0
	while (moved < abs(floor(vsp)) && !place_meeting(x, y+sign(vsp), oFloor)) {
		y += sign(vsp)
		moved += 1
	}
	vsp += vGravity
}

// After applying vertical movement, check if they are on the ground
if (place_meeting(x, y+1, oFloor)) {
	vsp = 0
	ground = true
}
