extends Area2D

func _on_body_entered(_body):
	queue_free()
	print("+1 moneys")
