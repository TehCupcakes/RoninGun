draw_set_color(c_black)
draw_set_halign(fa_center)
draw_set_font(global.menuFont)
draw_set_alpha(1)

draw_text(room_width / 2, room_height / 2, "SCORE " + string(global.score))
