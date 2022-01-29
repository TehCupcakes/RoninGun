event_inherited()

if (dead) {
	x += hsp
	
	if (ground) {
		hsp += .4 * -sign(hsp)
		
		if (abs(hsp) < .01) {
			hsp = 0
		}
	}	
	
	if (ground && alarm[0] < 0) {
		alarm[0] = blinkDelay
	}
}
else {
	hsp += sign(oPlayer.x - x) * moveRate
	x += min(abs(hsp), maxMoveSpeed, abs(oPlayer.x - x)) * sign(hsp)
	
	if (ground && irandom(1000) == 1000) {
		vsp -= 8 + irandom(16)
	}
}
