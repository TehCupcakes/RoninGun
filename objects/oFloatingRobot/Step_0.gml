if (dead) {
	// TODO: Set sprite
	image_angle = image_angle + 4 % 360
} else {
	var targetX = oPlayer.x
	var targetY = oPlayer.y - 80
	var dir = point_direction(x, y, targetX, targetY)
	var moveX = lengthdir_x(maxMoveSpeed, dir)
	var moveY = lengthdir_y(maxMoveSpeed, dir)

	if (!place_meeting(x + moveX, y + moveY, oFloatingRobot)) {
		x += min(abs(moveX), abs(targetX - x)) * sign(moveX)
		y += min(abs(moveY), abs(targetY - y)) * sign(moveY)
	}

	// Wait until they are close to the player before dropping a bullet, and only if there isn't a platform in the way
	if (bulletReady && distance_to_point(oPlayer.x, oPlayer.y) <= range && !collision_line(x, y, oPlayer.x, oPlayer.y, oFloor, false, true)) {
		instance_create(x, y, oEnemyBullet)
		bulletReady = false
		alarm[1] = bulletCooldown
	}
}
