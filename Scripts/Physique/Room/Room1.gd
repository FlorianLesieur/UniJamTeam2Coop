extends Room



@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor


<<<<<<< Updated upstream
func OpenDoor() -> void:
	door.queue_free()
	buttonDoor.queue_free()
=======
@warning_ignore("unused_parameter")
func OpenDoor(id : int) -> void:
	if not opened:
		door.queue_free()
		buttonDoor.queue_free()
		opened = true
>>>>>>> Stashed changes
