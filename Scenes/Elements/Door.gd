extends StaticBody2D

func _on_button_body_entered(body):
	if body.get_collision_layer() == 4:
		hide()
		$CollisionShape2D.set_deferred("disabled", true)


func _on_button_body_exited(body):
	if body.get_collision_layer() == 4:
		show()
		$CollisionShape2D.set_deferred("disabled", false)
