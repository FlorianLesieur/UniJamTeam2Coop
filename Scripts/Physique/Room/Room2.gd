extends Room

var locked = true

@onready var door : Door = $Door

@export var defaultLit = true

@warning_ignore("unused_parameter")
func GetButton(id : int) -> void:
	if locked:
		door.queue_free()
		locked = false
