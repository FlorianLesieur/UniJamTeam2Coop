extends Node2D

var emplacement = 2

@onready var player : Node2D = $Player
@onready var camera : Camera2D = $Camera2D

@export var rooms : Array[Room]

@export var isOnDefaultLit = true
# @export var finalDoor = # insert final door node in the arborescence

func _on_room_retour() -> void:
	emplacement -= 1
	print(emplacement)
	player.position = rooms[emplacement-1].exit
	camera.position = rooms[emplacement-1].middle


func _on_room_sorti() -> void:
	emplacement += 1
	print(emplacement)
	player.position = rooms[emplacement-1].entry
	camera.position = rooms[emplacement-1].middle

# func _on_win_the_game():
# 	finalDoor.queue_free()
