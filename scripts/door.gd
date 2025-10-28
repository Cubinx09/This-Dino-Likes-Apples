extends Area2D
const FILE = "res://scenes/level_"

func _on_body_entered(body: Node2D):
	if body.is_in_group("Player"):
		var current_scene = get_tree().current_scene.scene_file_path
		var next_level = current_scene.to_int() + 1
		var next_level_path =  FILE + str(next_level) + ".tscn"
		print(next_level_path)
		
