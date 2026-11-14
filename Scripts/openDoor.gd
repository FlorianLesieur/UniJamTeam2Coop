extends Node

signal OpenDoor

@onready var door : Door = $door

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	door.visible = true
	door.open()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_door_open_door() -> void:
	door.visible = false # Replace with function body.
