extends Area2D
var player = "player.tscn"
@onready var timer: Timer = $Timer

func _on_body_entered(_player):
	timer.start()
	print("ouch!")
func _on_timer_timeout():
	get_tree().reload_current_scene()
	
