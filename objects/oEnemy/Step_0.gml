hsp += sign(oPlayer.x - x) * moveRate
x += min(abs(hsp), maxMoveSpeed, abs(oPlayer.x - x)) * sign(hsp)

if (place_meeting(x, y+1, oFloor)) {
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

if (place_meeting(x, y+1, oFloor)) {
	vsp = 0
	ground = true
}
