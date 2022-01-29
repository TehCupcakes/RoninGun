event_inherited()

// Jump pressed
if (keyboard_check_pressed(vk_space)) {
	if (ground) {
		vsp = -jumpSpeed
	}
}
if (keyboard_check_released(vk_space) && vsp < 0) {
	vsp = 0
}

var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
hsp = baseVelocity * hDir

x += hsp
