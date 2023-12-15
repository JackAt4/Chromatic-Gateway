extends Node2D

@export var scenePath = "res://Scenes/Levels/Tutorial2/tutorial2.tscn"

func _on_area_2d_body_entered(body): # ----- Changes Level
	get_tree().change_scene_to_file(scenePath)
