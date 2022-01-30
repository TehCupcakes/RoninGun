/// @description Explode!
instance_destroy()
instance_create_depth(x, y-sprite_get_height(sprite_index)/2, depth-1, oBarrelExplosion)

var randDir = 0
var randDist = 0
var xPlace = x
var yPlace = y
repeat(explosionCount) {
	randDir = irandom(359)
	randDist = irandom(range)
	xPlace = lengthdir_x(randDist, randDir)
	yPlace = lengthdir_y(randDist, randDir)
	instance_create_depth(x + xPlace, y-sprite_get_height(sprite_index)/2 + yPlace, depth-1, oBarrelExplosion)
}