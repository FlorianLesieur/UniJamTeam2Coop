extends Node

# When you receive AddCharacter, add the character in the var

@export var character = "a"
# @export var character = "b"
# @export var character = "c"
# @export var character = "d"

signal AddCharacter

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

# Call this function to interact with the button
func press() -> void:
	AddCharacter.emit()
