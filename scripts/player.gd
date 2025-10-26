extends CharacterBody2D
const SPEED = 140.0
const SUPERSPEED = 140.0*1.5
const JUMP_VELOCITY = -285.0

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	var direction := Input.get_axis("left", "right",)
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	
	#flips the sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
		
	#walk
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	#run
	#if Input.is_action_pressed("run"):
		#velocity.x = SUPERSPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SUPERSPEED)
	
	#animation plays here
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("default")
		else:
			animated_sprite.play("walk")
	else:
		animated_sprite.play('jump')
		
	move_and_slide()
