event_inherited()

if (dead) {
	if (ground) {
		hsp = max(0, abs(hsp) - 0.4) * sign(hsp)
	}
	
	if (ground && alarm[0] < 0) {
		alarm[0] = blinkDelay
	}
}
else {
	if (ground) {
		hsp += sign(oPlayer.x - x) * moveRate
	}
	
	if (ground && irandom(1000) == 1000) {
		vsp -= 8 + irandom(16)
	}
}
