extends Area2D
var END = "res://scenes/end.tscn"

func _on_body_entered(_body):
	print("Got the apple!")
	get_tree().change_scene_to_file(END)
	
