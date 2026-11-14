extends Room

@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor

@export var defaultLit = true

var opened = false

func OpenDoor() -> void:
	if not opened:
		door.queue_free()
		buttonDoor.queue_free()
		opened = true
