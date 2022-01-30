enum SpawnLocation {
	LEFT_SIDE,
	RIGHT_SIDE,
	ROOF
}

function scrSpawnEnemy() {
	var floorY = 2150
	var locations = [
		SpawnLocation.LEFT_SIDE,
		SpawnLocation.RIGHT_SIDE,
		SpawnLocation.ROOF,
	]
	var enemies = [
		oGroundRobot,
		oFloatingRobot,
	]
	
	var enemy = enemies[irandom(array_length(enemies) - 1)]
	
	var spawnDirection = enemy == oFloatingRobot ? SpawnLocation.ROOF : array_get(locations, irandom(array_length(locations) - 1))
	
	switch (spawnDirection) {
		case SpawnLocation.LEFT_SIDE:
			instance_create_layer(global.view_xview - 30, min(oPlayer.y + irandom(300) - 150, floorY - 20), "Instances", enemy)
			break
		case SpawnLocation.RIGHT_SIDE:
			instance_create_layer(global.view_xview + global.view_wview + 30, min(oPlayer.y + irandom(300) - 150, floorY), "Instances", enemy)
			break
		case SpawnLocation.ROOF:
			instance_create_layer(global.view_xview + irandom(global.view_hview), global.view_yview - 10, "Instances", enemy)
			break
	}
}
