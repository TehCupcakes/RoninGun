if (swordSubimage + 1 < sprite_get_number(sSwordArm)) {
	swordSubimage += 1
	alarm[1] = 2
	
	with (oSwordHitbox) {
		image_index = other.swordSubimage
	}
} else {
	swordSubimage = 0
	instance_destroy(oSwordHitbox)
}