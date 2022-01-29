event_inherited()

if (!dead) {
	// Jump pressed
	if (keyboard_check_pressed(vk_space)) {
		if (ground && !jumping) {
			jumping = true
			sprite_index = sPlayerJump
			image_index = 0
			image_speed = animation_speed
		}
	}
	if (jumping) {
		if (vsp >= 0) {
			vsp = -jumpSpeed
		} else if (image_index >= 5 || !ground) {
			image_index = 5
			image_speed = 0
			jumping = false
		}
	} else {
		if (ground && sprite_index != sPlayerRun) {
			sprite_index = sPlayerRun
			image_index = 0
			image_speed = animation_speed
		}
		
		if (keyboard_check_released(vk_space) && vsp < 0) {
			vsp = 0
		}
	}
	
	var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
	hsp = baseVelocity * hDir

	x = clamp(x + hsp, 8, room_width - 8)
}
