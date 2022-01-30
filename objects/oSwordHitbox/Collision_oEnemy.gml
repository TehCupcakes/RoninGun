if (other.dead) {
	return
}

if (ds_list_find_index(enemiesHit, other) == -1) {
	scrDamageEnemy(other, damage, x > other.x ? 135 : 45, 10)
	audio_play_sound(sfxRobotSwordHit, 2, false)
	ds_list_add(enemiesHit, other)
}
