if (!oPlayer.cant_use_sword) {
	instance_create(swordX, swordY, oSwordHitbox)

	if (audio_is_playing(sfxSword)) {
		audio_stop_sound(sfxSword)
	}
	audio_play_sound_at(sfxSword, swordX, swordY, depth, 0, 0, 1, false, 1)

	lastWeapon = Weapon.SWORD
	swordSubimage = 0
	alarm[1] = 2
	oPlayer.alarm[1] = oPlayer.dash_duration
	oPlayer.dash = true	
	oPlayer.dash_direction = image_xscale
	oPlayer.cant_use_sword = true
	oPlayer.alarm[2] = oPlayer.sword_attack_duration
}


