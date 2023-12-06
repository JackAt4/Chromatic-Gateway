extends CharacterBody2D

const speed = 325.0
var keyPressed = false
var holding = false

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed

func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		if not keyPressed and not holding:
			if str($Area2D.get_overlapping_bodies().back()).begins_with("Box"):
				holding = true
			keyPressed = true
		elif not keyPressed and holding:
			holding = false
		print(holding)
	else:
		keyPressed = false

func _physics_process(_delta):
	handleInput()
	move_and_slide()
