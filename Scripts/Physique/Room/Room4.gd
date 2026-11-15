extends Room

signal WinTheGame

var answer_door = [3, 2, 2, 4, 3, 2, 3, 1]
var answer_game = [1, 2, 4, 1, 3, 4, 2, 1]

var index = 0

var current_list = 0

var opened = false

@onready var door = $HiddenWall

@export var defaultLit = false

func GetButton(id : int) -> void:
	if id == answer_door[index] && (current_list == 0 || current_list == 1):
		current_list = 1
		index += 1
		if index == answer_door.size() && opened == false:
			door.queue_free()
			opened = true
	elif id == answer_game[index] && (current_list == 0 || current_list == 2):
		current_list = 2
		index += 1
		if index == answer_game.size():
			WinTheGame.emit()
	else:
		index = 0
		current_list = 0
