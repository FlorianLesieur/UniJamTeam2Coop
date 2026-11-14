extends Node

class_name Door

# When you receive OpenDoor, delete this node to remove its hitbox

signal OpenDoor

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Call this function to interact with the button
func open() -> void:
	OpenDoor.emit()
	# queue_free()
