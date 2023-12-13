extends StaticBody2D

# ----- Variables -----
var actions = 0
@export var requiredAmount = 1

func button_check(pressed):
	if pressed: # ----- Counts how many buttons has been pushed
		actions += 1
	else:
		actions -= 1
		
	if actions == requiredAmount: # ----- Checks if enough buttons has been pushed
		hide()
		$CollisionShape2D.set_deferred("disabled", true)
	else:
		show()
		$CollisionShape2D.set_deferred("disabled", false)
