event_inherited()

baseVelocity = 10
hsp = 0
jumpSpeed = 22
jumping = false
invincible = false

instance_create_depth(x, y, depth-1, oArms)

animation_speed = 0.75
image_speed = animation_speed

// For animating blinking after taking damage
blink = false
blinkCount = 0
blinkDuration = 8
maxBlinks = 16
