extends CharacterBody2D
class_name Player


const SPEED = 10000.0

var button : PhysiqueButton = null



func _physics_process(delta: float) -> void:


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_vector("Left", "Right", "Up", "Down")
	if direction:
		velocity = direction.normalized() * SPEED * delta
	else :
		velocity = Vector2.ZERO

	if (Input.is_action_just_pressed("Interact") && button != null) :
		button.press() 

	move_and_slide()
	
func _on_zone_detection_body_entered(body : Node2D):
	if body is PhysiqueButton:
		print("j'ai un bouton")
		button = body

	
func _on_zone_detection_body_exited (body : Node2D):
	if body == button:
		print("J'ai oublié le bouton")
		
		button = null
