var bulletX = gunX + gunOffsetX * image_xscale + lengthdir_x(sprite_get_width(sGunArm), aimAngle)
var bulletY = gunY - 1 + lengthdir_y(sprite_get_height(sGunArm), aimAngle)
var bullet = instance_create(bulletX, bulletY, oBullet)
bullet.image_angle = image_angle
bullet.image_xscale = image_xscale
bullet.moveDir = aimAngle

if (audio_is_playing(sfxPistol)) {
	audio_stop_sound(sfxPistol)
}
audio_play_sound(sfxPistol, 1, false)

lastWeapon = Weapon.GUN
gunSubimage = 0
alarm[0] = 2