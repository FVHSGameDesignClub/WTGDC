extends KinematicBody2D

var SPEED = 0

var movedir = Vector2(0, 0)
var spritedir = "Down"

func movement_loop():
	var motion = movedir.normalized() * SPEED
	move_and_slide(motion, Vector2(0, 0))

func spritedir_loop():
	match movedir:
		Dir.Left:
			spritedir = "Left"
		Dir.Right:
			spritedir = "Right"
		Dir.Up:
			spritedir = "Up"
		Dir.Down:
			spritedir = "Down"

func anim_switch(animation):
	var newanim = str(animation,spritedir)
	
	if $Anim.current_animation != newanim:
		$Anim.play(newanim)