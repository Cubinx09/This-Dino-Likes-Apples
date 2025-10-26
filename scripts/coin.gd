extends Area2D
var player = "player.tscn
"
func _on_body_entered(_player):
	queue_free()
	print("+1 moneys")
