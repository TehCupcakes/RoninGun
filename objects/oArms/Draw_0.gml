image_alpha = oPlayer.image_alpha
draw_sprite_ext(sGunArm, gunSubimage, gunX + gunOffsetX * image_xscale, gunY, image_xscale, image_yscale, lastWeapon == Weapon.GUN ? image_angle : 0, c_white, image_alpha)
draw_sprite_ext(sSwordArm, swordSubimage, swordX + swordOffsetX * image_xscale, swordY, image_xscale, image_yscale, lastWeapon == Weapon.SWORD ? image_angle + 180*image_xscale : 0, c_white, image_alpha)
draw_sprite_ext(sReticle, 0, mouse_x, mouse_y, 1, 1, aimAngle, c_white, 1)
