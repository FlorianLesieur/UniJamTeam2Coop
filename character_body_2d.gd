extends CharacterBody2D
class_name Player


const SPEED = 10000.0


func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("Left", "Right", "Up", "Down")
	if direction:
		velocity = direction.normalized() * SPEED * delta
	else :
		velocity = Vector2.ZERO



	move_and_slide()
