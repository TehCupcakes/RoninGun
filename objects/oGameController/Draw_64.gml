for (var i = 0; i < maxHealth; i++) {
	draw_sprite(sHealth, global.playerHealth > i ? 0 : 1, 4 + 17 * i, 4)
}