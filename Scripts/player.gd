class_name Player
extends CharacterBody2D


@export var speed: int = 100

func handle_movement() -> void:
	var direction: int = 0
	if (Input.is_action_pressed("p1Right")):
		direction = 1
	elif (Input.is_action_pressed("p1Left")):
		direction = -1
	velocity = Vector2(direction, 0) * speed


func _physics_process(_delta: float) -> void:
	handle_movement()
	move_and_slide()
