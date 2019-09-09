extends Node

const Center = Vector2(0, 0)
const Left = Vector2(-1, 0)
const Right = Vector2(1, 0)
const Up = Vector2(0, -1)
const Down = Vector2(0, 1)

func random_direction() -> Vector2:
	match (randi() % 4):
		0:
			return Vector2.LEFT
		1:
			return Vector2.RIGHT
		2:
			return Vector2.UP
		3:
			return Vector2.DOWN