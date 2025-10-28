extends Area2D
var player = "player.tscn"
@onready var timer: Timer = $Timer

func _on_body_entered(_body):
	timer.start()
	Engine.time_scale = 0.5
	player.get_node("CollisionShape2D").queue_free()
	print("ouch!")
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	
