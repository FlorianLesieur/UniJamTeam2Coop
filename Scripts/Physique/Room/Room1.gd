extends Room


@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor

var opened = false

func OpenDoor() -> void:
	if not opened:
		door.queue_free()
		buttonDoor.queue_free()
		opened = true
