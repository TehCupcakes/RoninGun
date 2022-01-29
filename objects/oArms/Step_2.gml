gunX = oPlayer.x
gunY = oPlayer.y + gunOffsetY
swordX = oPlayer.x
swordY = oPlayer.y + swordOffsetY

aimAngle = point_direction(gunX, gunY, mouse_x, mouse_y)

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
