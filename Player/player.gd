extends "res://Engine/Entity.gd"


func _physics_process(delta):
	_ready()
	controls_loop()
	movement_loop()
	spritedir_loop()
	
	if movedir != Vector2(0, 0):
		anim_switch("Walk")
	else:
		anim_switch("Idle")

func _ready():
	SPEED = 70
	
func controls_loop():
	var LEFT	= Input.is_action_pressed("ui_left")
	var RIGHT	= Input.is_action_pressed("ui_right")
	var UP		= Input.is_action_pressed("ui_up")
	var DOWN	= Input.is_action_pressed("ui_down")
	
	movedir.x = -int(LEFT) + int(RIGHT)
	movedir.y = -int(UP) + int(DOWN)
	