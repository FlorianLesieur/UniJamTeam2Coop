extends Room

var locked = true

@onready var door : Door = $Door

func GetButton(id : int) -> void:
	if locked:
		door.queue_free()
		locked = false
