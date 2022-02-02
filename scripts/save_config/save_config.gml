function save_config() {
	ini_open(CONFIG_FILE)
	ini_write_real("Audio", "music", global.musicVolume)
	ini_write_real("Audio", "sfx", global.sfxVolume)
	ini_write_real("Window", "fullscreen", window_get_fullscreen())
	ini_close()
}