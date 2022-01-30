spawnRate = 1
stepsSinceSpawn = 0
minChance = 0
maxHealth = 10

global.playerHealth = maxHealth
global.maxHealth = maxHealth
global.score = 0
global.combo = 0

drawHealthScale = 4

window_set_cursor(cr_none)

audio_stop_all()
audio_play_sound(sfxInGameMusic, 10000, true)