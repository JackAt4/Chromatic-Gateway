extends Area2D

# ----- Variables -----
@export var bodies = 0
@export var doorCount = 0

func _ready():
	if bodies != 0:
		get_node("../Door").button_check(true)
		for i in range(doorCount): # ----- If there's more than one door, notify those doors
			get_node("../Door" + str(i + 2)).button_check(true)

func _on_body_entered(body): # ----- Sends door signal to start counting buttons pushed
	bodies += 1
	if body.get_collision_layer() == 4 or body.get_collision_layer() == 1:
		if bodies == 1:
			get_node("../Door").button_check(true)
			for i in range(doorCount): # ----- If there's more than one door, notify those doors
				get_node("../Door" + str(i + 2)).button_check(true)

func _on_body_exited(body): # ----- Same as previous but for removing one from the button count
	bodies -= 1
	if body.get_collision_layer() == 4 or body.get_collision_layer() == 1:
		if bodies == 0:
			get_node("../Door").button_check(false)
			for i in range(doorCount): # ----- If there's more than one door, notify those doors
					get_node("../Door" + str(i + 2)).button_check(false)
