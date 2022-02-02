function toggle_fullscreen() {
	if (IS_HTML5) {
		gmcallback_html5_fullscreen()
	} else {
		window_set_fullscreen(!window_get_fullscreen())
	}
}