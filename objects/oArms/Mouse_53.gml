if (audio_is_playing(sfxSword)) {
	audio_stop_sound(sfxSword)
}
audio_play_sound_at(sfxSword, swordX, swordY, depth, 0, 0, 1, false, 1)

lastWeapon = Weapon.SWORD
