extends CharacterBody2D

const speed = 325.0
var keyPressed = false
var holding = false
var box

func handleInput():
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed

func _process(_delta):
	if Input.is_action_pressed("ui_accept"):
		if not keyPressed and not holding:
			box = $Area2D.get_overlapping_bodies().back()
			print(box)
			if str(box).begins_with("Box"):
				holding = true
				box.get_parent().remove_child(box)
				add_child(box)
				box.set_global_position(self.get_position() + Vector2(125, 125))
			print(str(holding) + ": Top")
		elif not keyPressed and holding:
			holding = false
			remove_child(box)
			get_parent().add_child(box)
			print(str(holding) + ": Bottom")
		keyPressed = true
	else:
		keyPressed = false

func _physics_process(_delta):
	handleInput()
	move_and_slide()
 
