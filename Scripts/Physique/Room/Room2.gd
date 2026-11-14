extends Room

var locked = true

@onready var door : Door = $Door

func GetButton(id : int) -> void:
	door.queue_free()
