extends Node2D
class_name SupportRoom

@onready var room : Room = $Room


signal sorti
signal retour

func _ready() -> void:
	room.sorti.connect(sorti.emit)
	room.retour.connect(retour.emit)

func getEntry() -> Vector2 :
	return room.entry.position + position

func getExit() -> Vector2 :
	return room.exit.position + position

func getMiddle() -> Vector2 :
	return room.middle.position + position
