event_inherited()

if (!dead && !hurt) {
	// Jump pressed
	if (keyboard_check_pressed(vk_space)) {
		if (ground && !jumping) {
			jumping = true
			vsp = -jumpSpeed
			sprite_index = sPlayerJump
			image_index = 0
			image_speed = animation_speed
		}
	}
	if (jumping) {
		if (image_index >= 1 || !ground) {
			image_index = 1
			image_speed = 0
			jumping = false
		}
	} else {
		if (keyboard_check_released(vk_space) && vsp < 0) {
			vsp = 0
		}
	}
	
	if (!dash) {
		vGravity = 1.1
		var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
		hsp = baseVelocity * hDir
	}
	else {
		hsp = dashSpeed * dash_direction
		vGravity = 0
		vsp = 0
	}
	

	x = clamp(x + hsp, 8, room_width - 8)
}