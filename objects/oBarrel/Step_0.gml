if (!triggered) {
	if (distance_to_object(oPlayer) <= triggerZone) {
		triggered = true
		alarm[0] = triggerTime
	}
}

var yToMove = floor(vsp)
while (abs(yToMove) > 0) {
	if (scrFloorBelow()) {
		yToMove = 0
		ground = true
		vsp = 0
	} else {
		y += sign(yToMove)
		yToMove -= sign(yToMove)
	}
}

if (ground) {
	vsp = 0
} else {
	vsp += vGravity
}
