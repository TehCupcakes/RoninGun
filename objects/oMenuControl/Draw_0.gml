if (!textBlink) {
	draw_set_alpha(1)

	if (IS_HTML5) {
		draw_sprite(sPressEnter, 0, 940, 600)
	} else {
		draw_set_color(c_black)
		draw_set_halign(fa_center)
		draw_set_font(global.menuFont)
		draw_text(940, 600, "PRESS ENTER")
	}
}