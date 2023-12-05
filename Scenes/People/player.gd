extends CharacterBody2D

const SPEED = 325.0

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * SPEED

func _physics_process(delta):
	
	handleInput()
	move_and_slide()
