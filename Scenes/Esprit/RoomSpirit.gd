extends Control
class_name RoomSpirit

@export var pieces : Array[Piece] = []
@export var keys: Array[Vector2] = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(len(keys)):
		pieces[i].pos_key=keys[i]


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	for i in range(len(keys)):
		if pieces[i].is_placed():
			print(i)
