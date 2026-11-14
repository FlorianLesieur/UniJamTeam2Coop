extends Node

# When you receive LightSwitch, turn the lights on or off depending of their state in ALL rooms

signal LightSwitch

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Call this function to interact with the button
func switchLight() -> void:
	LightSwitch.emit()
