function scrDamageEnemy(enemy, amount, angle, velocity) {
	if (enemy.dead) {
		return
	}

	with (enemy) {
		hp -= amount
	
		if (hp <= 0) {
			dead = true
			scrAddKO()
			
			if (object_index == oGroundRobot) {
				image_xscale = (angle >= 90 && angle < 270) ? 1 : -1
			
				var force = max(abs(velocity) * .25, 4)
				hsp = lengthdir_x(force, angle)
			
				if (ground)
					vsp = min(lengthdir_y(force, angle), -irandom_range(4, 8))
				else
					vsp = lengthdir_y(force, angle)
			} else {
				alarm[0] = blinkDelay
			}
		}
	}
}