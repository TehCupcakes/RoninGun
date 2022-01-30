previousGround = ground

event_inherited()

distanceToPlayer = point_distance(x, y, oPlayer.x, oPlayer.y)
if (ground && !previousGround && distanceToPlayer < 600) {
	audio_play_sound(sfxRobotLanding, 1, false)
}

if (dead) {
	if (sprite_index != sEnemyDead) {
		sprite_index = sEnemyDead
		image_index = 0
	}

	if (ground) {
		hsp = max(0, abs(hsp) - 0.4) * sign(hsp)
	}
	
	if (ground && alarm[0] < 0) {
		alarm[0] = blinkDelay
	}
}
else {
	if (ground) {
		if (y > oPlayer.y || !collision_line(x, y, oPlayer.x, oPlayer.y, oFloor, false, true)) {
			hsp += sign(oPlayer.x - x) * moveRate
		} else {
			hsp += moveRate * sign(image_xscale)
		}
	}
	
	if (ground && irandom(1000) == 1000) {
		vsp -= 8 + irandom(16)
	}
	
	if (!warnedPlayer && distanceToPlayer < 300) {
		warnedPlayer = true
		audio_play_sound(sfxRobotWarn, 1, false)
	}
}
