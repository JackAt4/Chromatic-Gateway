extends Node2D

func _on_area_2d_body_entered(body): # ----- Changes Level
	get_tree().change_scene_to_file("res://Scenes/Levels/Tutorial2/tutorial2.tscn")
