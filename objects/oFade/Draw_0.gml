/// @description Insert description here
// You can write your code in this editor

if (fade > 0) {
	if type=="normal"
	{
		draw_set_color(color)
		draw_set_alpha(fade)
		draw_rectangle(0,0,room_width,room_height,0)
	}
	else if type=="sprite"
	{
		draw_sprite_ext(sprite_index,image_index,(room_width/2),(room_height/2),xScale,yScale,rot,color,fade)
	}
}
