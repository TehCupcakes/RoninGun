var moved = 0
while (moved < abs(floor(vsp))) {
	y += sign(vsp)
	moved += 1

	if (vsp > 0 && scrFloorBelow()) {
		moved = abs(floor(vsp))
		vsp = 0
		ground = true
	}
}
vsp += vGravity

// After applying vertical movement, check if they are on the ground
if (scrFloorBelow()) {
	if (vsp >= 0) {
		vsp = 0
		ground = true
	}
} else {
	ground = false
}
