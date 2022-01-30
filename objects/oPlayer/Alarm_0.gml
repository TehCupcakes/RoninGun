/// @description Toggle blinking animation
blink = !blink

if (blinkCount == maxBlinks) {
	blinkCount = 0
	blink = false
	invincible = false
} else {
	blinkCount += 1
	alarm[0] = blinkDuration
}
