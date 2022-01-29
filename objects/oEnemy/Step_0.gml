event_inherited()

if (!dead) {
	hsp += sign(oPlayer.x - x) * moveRate
	x += min(abs(hsp), maxMoveSpeed, abs(oPlayer.x - x)) * sign(hsp)
	
	if (ground && irandom(1000) == 1000) {
		vsp -= 8 + irandom(16)
	}
} else if (ground && alarm[0] < 0) {
	alarm[0] = blinkDelay
}
