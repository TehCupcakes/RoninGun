draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)
draw_sprite_part_ext(sprite_index, 1, 0, 0, value, sprite_get_height(sprite_index), x-sprite_get_xoffset(sprite_index)*image_xscale, y-sprite_get_yoffset(sprite_index)*image_yscale, image_xscale, image_yscale, c_white, image_alpha)

var handleX = clamp(x + value*image_xscale, x + 2, x + sprite_width - 2)
draw_sprite_ext(sSliderHandle, (hovered || grabbed) ? 1 : 0, handleX, y, image_xscale, image_yscale, image_angle, c_white, image_alpha)