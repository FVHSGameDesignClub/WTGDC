extends "res://Engine/Entity.gd"

var movetimer_length = 100
var movetimer = 0

func _ready():
	SPEED = 30
	movedir = Dir.random_direction()
	
func _physics_process(delta):
	movement_loop()
	spritedir_loop()
	
	if movetimer > 0:
		movetimer -= 1
	if movetimer == 0 || is_on_wall():
		movedir = Dir.random_direction()
		movetimer = movetimer_length
	
	if movedir != Vector2(0, 0):
		anim_switch("Walk")
	else:
		anim_switch("Idle")