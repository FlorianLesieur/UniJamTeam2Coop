extends CharacterBody2D


const SPEED = 10000.0

signal body_exit

func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("Left", "Right", "Up", "Down")
	if direction:
		velocity = direction.normalized() * SPEED * delta
	else :
		velocity = Vector2.ZERO

	move_and_slide()
	
func _on_zone_detection_body_entered(body : Node2D):
	if body is Caillou:
		print("c'est un caillou")
	else :
		print("c'est pas un caillou")
	return
	
func _on_zone_detection_body_exited (body : Node2D):
	if body is Caillou:
		print("c'est pas un caillou")
	return
