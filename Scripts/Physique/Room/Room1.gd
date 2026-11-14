extends Room

var countdown : Timer

@onready var door : Door = $door
@onready var buttonDoor : PhysiqueButton = $buttonDoor
var pressed = 0

func ButtonPressed() -> void:
	pressed += 1
	
	
	door.queue_free()
	buttonDoor.queue_free()
