draw_sprite_ext(sGunArm, 0, gunX + gunOffsetX * image_xscale, gunY, image_xscale, image_yscale, lastWeapon == Weapon.GUN ? image_angle : 0, c_white, image_alpha)
draw_sprite_ext(sSwordArm, 0, swordX + swordOffsetX * image_xscale, swordY, image_xscale, image_yscale, lastWeapon == Weapon.SWORD ? (image_angle + 90*image_xscale) : 0, c_white, image_alpha)
draw_sprite_ext(sReticle, 0, mouse_x, mouse_y, 1, 1, aimAngle, c_white, 1)
