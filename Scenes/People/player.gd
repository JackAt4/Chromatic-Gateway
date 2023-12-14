extends CharacterBody2D

# ----- Variables ------
const speed = 325.0

func handleInput(): # ----- Movement Code -----
	var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = moveDirection * speed

func _physics_process(_delta):
	handleInput()
	move_and_slide()
 
