extends Control

@export var rooms : Array[RoomSpirit] = []

var indice=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(len(rooms)):
		rooms[i].visible=false
	rooms[0].visible=true
	rooms[0].hide_prev_button()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if (rooms[indice].all_placed()&&indice<len(rooms)-1):
		rooms[indice].show_next_button()

func move_to_prev():
	rooms[indice].visible=false
	indice-=1
	rooms[indice].visible=true
	if (indice==0):
		rooms[indice].hide_prev_button()

func move_to_next():
	rooms[indice].visible=false
	indice+=1
	rooms[indice].visible=true

func _on_room_spirit_prev() -> void:
	move_to_prev()

func _on_room_spirit_next() -> void:
	move_to_next()

func _on_room_spirit_2_next() -> void:
	move_to_next()

func _on_room_spirit_2_prev() -> void:
	move_to_prev()

func _on_room_spirit_3_next() -> void:
	move_to_next()

func _on_room_spirit_3_prev() -> void:
	move_to_prev()
