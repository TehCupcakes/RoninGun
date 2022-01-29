aimAngle = point_direction(x, y, mouse_x, mouse_y)
gunOffsetX = 4
gunOffsetY = -17
swordOffsetX = -4
swordOffsetY = -17

gunX = oPlayer.x + gunOffsetX
gunY = oPlayer.y + gunOffsetY
swordX = oPlayer.x + swordOffsetX
swordY = oPlayer.y + swordOffsetY

gunSubimage = 0
swordSubimage = 0

lastWeapon = Weapon.GUN
