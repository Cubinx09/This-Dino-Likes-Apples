extends Node2D
const SPEED = 60
var facingWhatWay = 1
@onready var left: RayCast2D = $left
@onready var right: RayCast2D = $right
@onready var slimeDude: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta: float) -> void:
	if right.is_colliding():
		facingWhatWay = -1
		slimeDude.flip_h = false
	if left.is_colliding():
		facingWhatWay = 1
		slimeDude.flip_h = true
		
	position.x += facingWhatWay * SPEED * delta 
	
