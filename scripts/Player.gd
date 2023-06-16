extends CharacterBody2D

const flap = 200
const maxfallspeed = 200
const gravity = 10


func _physics_process(delta):
	velocity.y += gravity
	if velocity.y > maxfallspeed:
		velocity.y = maxfallspeed
	
	move_and_slide()
	
	if Input.is_action_just_pressed("FLAP"):
		velocity.y = -flap
