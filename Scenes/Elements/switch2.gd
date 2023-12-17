extends Area2D

# ----- Variables -----
var bodies = 0
var switched = false
var keyPressed = false

func _process(_delta): # Checks if spacebar is pressed
	if Input.is_action_pressed("ui_accept"):
		if !keyPressed:
			keyPressed = true
			switch()
	else:
		keyPressed = false

func _on_body_entered(body): # ----- Keeps count of how many bodies in area2d
	if body.get_collision_layer() == 1:
		bodies += 1


func _on_body_exited(body):
	if body.get_collision_layer() == 1:
		bodies -= 1

func switch(): # ----- Sends signals to doors
	if bodies == 1:
		switched = !switched
		get_node("../Door").button_check(switched)
		get_node("../Door2").button_check(switched)
