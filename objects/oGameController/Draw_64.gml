draw_set_valign(fa_top)
draw_set_color(c_black)
draw_set_font(global.font)

draw_set_halign(fa_left)
for (var i = 0; i < maxHealth; i++) {
	draw_sprite_ext(sHealth, global.playerHealth > i ? 0 : 1, (4 + 17 * i) * drawHealthScale, 4 * drawHealthScale, drawHealthScale, drawHealthScale, 0, c_white, 1)
}

draw_set_halign(fa_right)
draw_text(display_get_gui_width() - 12, IS_HTML5 ? 12 : -4, global.score)
