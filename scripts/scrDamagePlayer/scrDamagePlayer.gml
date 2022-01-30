function scrDamagePlayer(amount, enemy) {
	if (oPlayer.invincible) {
		return
	}
	
	global.playerHealth -= amount
	
	if (global.playerHealth > 0) {
		audio_play_sound_at(sfxPlayerHurt, oPlayer.x, oPlayer.y, oPlayer.depth, 0, 0, 0, false, 100)
	
		with (oPlayer) {
			invincible = true
			blinkCount = 0
			blink = true
			hurt = true
			alarm[0] = blinkDuration
			alarm[3] = hurtDuration
		}
	} else {
		// Game over!
		room_restart()
	}
}