extends StaticBody2D

func _on_button_body_entered(body):
	if body.get_collision_layer() == 4:
		hide()
		


func _on_button_body_exited(body):
	if body.get_collision_layer() == 4:
		show()
		
