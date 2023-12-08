extends Area2D

var bodies = 0

func _on_body_entered(body): # ----- Sends all doors signal to start counting buttons pushed
	bodies += 1
	if body.get_collision_layer() == 4 or body.get_collision_layer() == 1:
		if bodies == 1:
			get_node("../Door").button_check(true)
			get_node("../Door2").button_check(true)
			get_node("../Door3").button_check(true)

func _on_body_exited(body): # ----- Same as previous but for removing one from the button count
	bodies -= 1
	if body.get_collision_layer() == 4 or body.get_collision_layer() == 1:
		if bodies == 0:
			get_node("../Door").button_check(false)
			get_node("../Door2").button_check(false)
			get_node("../Door3").button_check(false)
