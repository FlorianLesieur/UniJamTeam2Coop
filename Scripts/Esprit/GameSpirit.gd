extends Control

@export var rooms : Array[RoomSpirit] = []

var indice=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(len(rooms)):
		rooms[i].visible=false
		rooms[i].next.connect(move_to_next)
		rooms[i].prev.connect(move_to_prev)
	rooms[0].visible=true
	rooms[0].hide_prev_button()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
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
