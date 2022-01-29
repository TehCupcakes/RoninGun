blink = !blink
alarm[0] = blinkDuration

blinkDuration--
if (blinkDuration < 0) {
	instance_destroy()
}
