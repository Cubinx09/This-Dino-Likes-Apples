extends Area2D
@onready var timer: Timer = $Timer

func _on_body_entered(_body):
	timer.start()
	print("ouch!")
	
func _on_timer_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
	
