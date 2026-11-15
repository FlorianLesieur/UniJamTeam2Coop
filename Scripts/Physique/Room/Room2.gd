extends Room

var locked = true

@onready var door : Door = $door

@export var defaultLit = true

func GetButton(_id : int) -> void:
	if locked:
		door.play_sound_and_delete()
		locked = false
