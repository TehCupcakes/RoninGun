var bullet = instance_create(x + lengthdir_x(sprite_get_width(sprite_index), aimAngle), y + lengthdir_y(sprite_get_height(sprite_index), aimAngle), oBullet)
bullet.image_angle = image_angle
bullet.image_xscale = image_xscale
bullet.moveDir = aimAngle
