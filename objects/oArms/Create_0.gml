aimAngle = point_direction(x, y, mouse_x, mouse_y)
gunOffsetX = 3
gunOffsetY = -20
swordOffsetX = -3
swordOffsetY = -20

gunX = oPlayer.x + gunOffsetX
gunY = oPlayer.y + gunOffsetY
swordX = oPlayer.x + swordOffsetX
swordY = oPlayer.y + swordOffsetY

gunSubimage = 0
swordSubimage = 0

lastWeapon = Weapon.GUN
