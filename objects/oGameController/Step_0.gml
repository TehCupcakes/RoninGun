stepsSinceSpawn += 1
minChance += exp(spawnRate) * random_range(0.6, 1) * stepsSinceSpawn / 30000;

if (random_range(minChance, 1) >= 1) {
	scrSpawnEnemy()
	stepsSinceSpawn = 0

	if (random(1) >= 0.9) {
		minChance = minChance / 2
	} else {
		minChance = 0
	}
}

// 0.33% chance to adjust rate. (e.g. once every 300 frames or 5 seconds)
if (irandom(299) == 1) {
	spawnRate = clamp(spawnRate + random_range(-0.1, 0.3), 1, 5)
}

// Random chance to drop a barrel
if (irandom(399) == 1) {
	instance_create_layer(global.view_xview + irandom(global.view_hview), global.view_yview - 10, "Instances", oBarrel)
}
