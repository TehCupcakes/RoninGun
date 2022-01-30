var xMove = lengthdir_x(moveSpeed, moveDir)
var yMove = lengthdir_y(moveSpeed, moveDir)

while (abs(xMove) > 0 || abs(yMove) > 0) {
	var adjustX = min(1, abs(xMove)) * sign(xMove)
	var adjustY = min(1, abs(yMove)) * sign(yMove)
	x += adjustX
	y += adjustY
	xMove -= adjustX
	yMove -= adjustY
	
	var collisionList = ds_list_create()
	instance_place_list(x, y, pEnemy, collisionList, true)
	for (var i = 0; i < ds_list_size(collisionList); i++) {
		var enemy = ds_list_find_value(collisionList, i)
		// Ignore dead enemies and ones that have been hit by this bullet. Check the next one
		if (enemy.dead || ds_list_find_index(enemiesHit, enemy) > -1) {
			continue
		}
		
		scrDamageEnemy(enemy, 1, moveDir, moveSpeed)
		ds_list_add(enemiesHit, enemy)
		
		if (audio_is_playing(sfxRobotBulletHit)) {
			audio_stop_sound(sfxRobotBulletHit)
		}
		audio_play_sound(sfxRobotBulletHit, 2, false)
		
		// Unless it has piercing?
		if (piercing > 0) {
			piercing--
		} else {
			instance_destroy()
		}
	}
	ds_list_destroy(collisionList)
	
	var floorHit = instance_place(x, y, oFloor)
	if (floorHit != noone) {
		// Adjust final position so the explosion appears at the right spot
		x = clamp(x, floorHit.x, floorHit.x + floorHit.image_xscale * 24)
		y = clamp(y, floorHit.y, floorHit.y+10)
		instance_destroy()
	}
}

// Destroy the instance when it is fully off screen
var buffer = 12;
if (x <= -buffer || y <= -buffer || x >= room_width + buffer || y >= room_height + buffer) {
	instance_destroy()
}
