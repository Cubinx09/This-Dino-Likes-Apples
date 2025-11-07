extends Area2D
@onready var score: Node = $"."

func _on_body_entered(_body):
	queue_free()
