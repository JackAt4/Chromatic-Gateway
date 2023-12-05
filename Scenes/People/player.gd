extends CharacterBody2D

const speed = 325.0

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed

func _process(delta):
	if Input.is_action_pressed("ui_accept"):
		pass

func _physics_process(delta):
	handleInput()
	move_and_slide()
