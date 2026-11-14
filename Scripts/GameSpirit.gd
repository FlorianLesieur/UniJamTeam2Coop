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

func _on_room_spirit_prev() -> void:
	print("prev recu")
	rooms[indice].visible=false
	indice-=1
	rooms[indice].visible=true
	if (indice==0):
		rooms[indice].hide_prev_button()


func _on_room_spirit_next() -> void:
	print("next recu")
	rooms[indice].visible=false
	indice+=1
	rooms[indice].visible=true
