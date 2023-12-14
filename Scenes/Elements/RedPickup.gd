extends Area2D

func _on_body_entered(body): # ----- Displays the dial
	if body.get_collision_layer() == 1:
		get_node("../CanvasLayer").show()
		queue_free()
