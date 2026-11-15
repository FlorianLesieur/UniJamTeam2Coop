extends Room

@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor

@export var defaultLit = true

var opened = false

func OpenDoor(_id : int) -> void:
	if not opened:
		door.play_sound_and_delete()
		buttonDoor.queue_free()
		opened = true
