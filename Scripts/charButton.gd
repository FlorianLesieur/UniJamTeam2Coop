extends Node

# When you receive AddCharacter, add the character in the var

@export var character : String = "a"
# @export var character = "b"
# @export var character = "c"
# @export var character = "d"

signal AddCharacter(char : String)



# Call this function to interact with the button
func press() -> void:
	AddCharacter.emit(character)
