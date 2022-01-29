function scrDamageEnemy(enemy, amount, angle, velocity) {
	if (enemy.dead) {
		return
	}

	with (enemy) {
		hp -= amount
	
		if (hp <= 0) {
			dead = true
			sprite_index = sEnemyDead
			image_xscale = (angle >= 90 && angle < 270) ? 1 : -1
			
			var force = max(abs(velocity), 4)
			hsp = lengthdir_x(force, angle)
			vsp = max(lengthdir_y(force, angle), 0) - irandom(8)
		}
	}
}