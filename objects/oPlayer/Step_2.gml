image_alpha = blink ? 0.5 : 1
image_xscale = sign(mouse_x - x)
if (image_xscale = 0) {
	image_xscale = 1
}

if (!jumping) {
	if (!ground) {
		sprite_index = sPlayerJump
		image_index = 5
		image_speed = 0
	}
	if (ground && sprite_index == sPlayerJump) {
		sprite_index = sPlayerStill
		image_speed = animation_speed
	}
	if (hsp != 0 && sprite_index == sPlayerStill) {
		sprite_index = sPlayerRun
		image_index = 0
		image_speed = animation_speed
	}
	if (hsp == 0 && sprite_index == sPlayerRun) {
		sprite_index = sPlayerStill
	}
	
	if (sprite_index == sPlayerRun) {
		image_speed = animation_speed * (sign(hsp) == sign(image_xscale) ? 1 : -1)
	}
}
