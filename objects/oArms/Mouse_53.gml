if (keyboard_check(vk_shift)) {
	event_user(0)
} else if (!oPlayer.cant_use_sword) {
	instance_create(swordX, swordY, oSwordHitbox)

	if (audio_is_playing(sfxSword)) {
		audio_stop_sound(sfxSword)
	}
	
	if (audio_is_playing(sfxPlayerDash)) {
		audio_stop_sound(sfxPlayerDash)
	}
	
	audio_play_sound(sfxSword, 10, false)
	audio_play_sound(sfxPlayerDash, 10, false)

	lastWeapon = Weapon.SWORD
	swordSubimage = 0
	alarm[1] = 2
	oPlayer.alarm[1] = oPlayer.dash_duration
	oPlayer.dash = true	
	oPlayer.dash_direction = image_xscale
	oPlayer.cant_use_sword = true
	oPlayer.alarm[2] = oPlayer.sword_attack_duration
}


