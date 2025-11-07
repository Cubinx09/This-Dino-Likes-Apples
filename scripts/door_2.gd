extends Area2D
const FILE = "res://scenes/level_3.tscn"

func _process(_body):
	if Input.is_action_pressed("enter"):
		get_tree().change_scene_to_file(FILE)
	
		
