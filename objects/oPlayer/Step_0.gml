var velocity = baseVelocity
var hDir = keyboard_check(ord("D")) - keyboard_check(ord("A"))

x += velocity * hDir

image_xscale = sign(mouse_x - x)
if (image_xscale = 0) {
	image_xscale = 1
}
