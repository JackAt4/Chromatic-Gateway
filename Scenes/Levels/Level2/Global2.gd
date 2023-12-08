extends Node2D

func _ready(): # ----- Ensures theres no collision with the box
	get_node("RedLayer/Box/CollisionShape2D").set_deferred("disabled", true)

func _on_red_toggled(button_pressed): # ----- The dial switch code -----
	if button_pressed:
		get_node("CanvasLayer/ca").show()
		get_node("CanvasLayer/Red/Dial").flip_h = true
		get_node("CanvasLayer/Red/Dial").flip_v = true
		get_node("RedLayer/Box/CollisionShape2D").set_deferred("disabled", false)
		get_node("RedLayer").show()
	else:
		get_node("CanvasLayer/ca").hide()
		get_node("CanvasLayer/Red/Dial").flip_h = false
		get_node("CanvasLayer/Red/Dial").flip_v = false
		get_node("RedLayer/Box/CollisionShape2D").set_deferred("disabled", true)
		get_node("RedLayer").hide()


func _on_area_2d_body_entered(body): # ----- Changes Level
	get_tree().change_scene_to_file("res://Scenes/Levels/Level3/level3.tscn")
