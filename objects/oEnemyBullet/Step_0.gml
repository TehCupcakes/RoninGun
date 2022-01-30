var xMove = lengthdir_x(moveSpeed, moveDir)
var yMove = lengthdir_y(moveSpeed, moveDir)

if (collision_line(x, y, x + xMove, y + yMove, oPlayer, false, false)) {
	instance_destroy()
	scrDamagePlayer(damage, id)
} else {
	x += xMove
	y += yMove
}

// Destroy the instance when it is fully off screen
var buffer = 12;
if (x <= -buffer || y <= -buffer || x >= room_width + buffer || y >= room_height + buffer) {
	instance_destroy()
}
