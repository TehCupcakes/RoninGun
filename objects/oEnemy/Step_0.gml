event_inherited()

if (!dead) {
	hsp += sign(oPlayer.x - x) * moveRate
	x += min(abs(hsp), maxMoveSpeed, abs(oPlayer.x - x)) * sign(hsp)
}
