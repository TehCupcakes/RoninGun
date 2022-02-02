function load_config() {
	if (file_exists(CONFIG_FILE)) {
		ini_open(CONFIG_FILE)
		scrSetMusicVolume(ini_read_real("Audio", "music", 0.5))
		scrSetSfxVolume(ini_read_real("Audio", "sfx", 0.5))
		window_set_fullscreen(ini_read_real("Window", "fullscreen", false))
		ini_close()
	} else {
		// Set to defaults
		scrSetMusicVolume(0.5)
		scrSetSfxVolume(0.5)
	}
}