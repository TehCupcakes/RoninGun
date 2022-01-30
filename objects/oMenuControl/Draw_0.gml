if (!textBlink) {
	draw_set_color(c_black)
	draw_set_halign(fa_center)
	draw_set_font(menuFont)
	draw_set_alpha(1)

	draw_text(room_width / 2, round(room_height * 0.75), "Press enter to start")
}