if (other.dead) {
	return
}

if (ds_list_find_index(enemiesHit, other) == -1) {
	scrDamageEnemy(other, damage, x > other.x ? 135 : 45, 10)
	if (audio_is_playing(sfxRobotSwordHit)) {
		audio_stop_sound(sfxRobotSwordHit)
	}
	audio_play_sound(sfxRobotSwordHit, 2, false)
	ds_list_add(enemiesHit, other)
	
	if (global.playerHealth < global.maxHealth)
		global.playerHealth++
}
