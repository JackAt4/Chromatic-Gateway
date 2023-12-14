extends Button

func _on_pressed(): # Starts game
	get_tree().change_scene_to_file("res://Scenes/Levels/Tutorial1/tutorial1.tscn")


func _on_button_2_pressed(): # Quits game
	get_tree().quit()
