event_inherited()

// Jump pressed
if (keyboard_check_pressed(vk_space)) {
	if (ground) {
		vsp = -jumpSpeed
	} else {
		
	}
}

var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))
hsp = baseVelocity * hDir

x += hsp
