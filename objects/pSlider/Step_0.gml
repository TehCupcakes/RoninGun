if (visible) {
	hovered = collision_point(mouse_x, mouse_y, id, false, false)
	if (hovered && mouse_check_button_pressed(mb_left)) {
		grabbed = true
	}
	if (grabbed && mouse_check_button_released(mb_left)) {
		grabbed = false
	}

	if (grabbed) {
		value = clamp(round((mouse_x - x) / image_xscale), 0, 100)
	
		// Child object should implement this event like an "onChange" handler for the value
		event_user(0)
	}
} else {
	hovered = false
	grabbed = false
}
