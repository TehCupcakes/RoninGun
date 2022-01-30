event_inherited()

baseVelocity = 7
maxMoveSpeed = 11 // Might be increased with a dash move or something?
dashSpeed = 11
hsp = 0
jumpSpeed = 18
jumping = false
invincible = false
dash = false

instance_create_depth(x, y, depth-1, oArms)

animation_speed = 0.5
image_speed = animation_speed

// For animating blinking after taking damage
blink = false
blinkCount = 0
blinkDuration = 8
maxBlinks = 16
dash_duration = 10
sword_attack_duration = 40
cant_use_sword = false
hurt = false
hurtDuration = 15

footstepInterval = 12
alarm[4] = footstepInterval

