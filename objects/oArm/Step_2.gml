x = oPlayer.x
y = oPlayer.y - 32
aimAngle = point_direction(x, y, mouse_x, mouse_y)

image_angle = aimAngle
if (image_angle >= 90 && image_angle < 270) {
	image_xscale = -1
	image_angle -= 180
	if (image_angle < 0) {
		image_angle = 360 + image_angle
	}
} else {
	image_xscale = 1
}
