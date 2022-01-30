gunX = oPlayer.x
gunY = oPlayer.y + gunOffsetY
swordX = oPlayer.x
swordY = oPlayer.y + swordOffsetY

if (oPlayer.sprite_index == sPlayerJump) {
	switch (floor(oPlayer.image_index)) {
		case 0:
			gunY -= 4
			swordY -= 4
			break
		case 1:
			gunY -= 7
			swordY -= 7
	}
} else if (oPlayer.sprite_index == sPlayerLand) {
	switch (floor(oPlayer.image_index)) {
		case 1:
			gunY += 3
			swordY += 3
			break
		case 2:
			gunY += 2
			swordY += 2
			break
	}
}

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

with (oSwordHitbox) {
	x = other.swordX + other.swordOffsetX * other.image_xscale
	y = other.swordY
	image_xscale = other.image_xscale
	image_angle = other.image_angle + 180 * other.image_xscale
}
