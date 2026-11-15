extends Room



@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor


@warning_ignore("unused_parameter")
func OpenDoor(id : int) -> void:
	door.queue_free()
	buttonDoor.queue_free()
