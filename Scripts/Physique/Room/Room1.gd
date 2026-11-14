extends Room



@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor


func OpenDoor() -> void:
	door.queue_free()
	buttonDoor.queue_free()
