function scrDamagePlayer(amount, enemy) {
	if (oPlayer.invincible) {
		return
	}
	
	global.playerHealth -= amount
	global.combo = 0
	
	if (global.playerHealth > 0) {
		audio_play_sound(sfxPlayerHurt, 100, false)
	
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
		room_goto(rGameOver)
	}
}