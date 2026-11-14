extends Node

class_name Door

# When you receive OpenDoor, delete this node to remove its hitbox

signal OpenDoor


# Call this function to interact with the button
func open() -> void:
	OpenDoor.emit()
	# queue_free()
