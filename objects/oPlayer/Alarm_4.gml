/// @description footsteps

if (abs(hsp) > 0 && ground) {
	audio_play_sound(sfxPlayerFootsteps, 1, false)
}

alarm[4] = footstepInterval
