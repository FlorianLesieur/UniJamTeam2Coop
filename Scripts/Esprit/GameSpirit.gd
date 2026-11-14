extends Control

@export var rooms : Array[RoomSpirit] = []
@export var room5 : Room5 = null


var indice=0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in range(len(rooms)):
		rooms[i].visible=false
		rooms[i].next.connect(move_to_next)
		rooms[i].prev.connect(move_to_prev)
	room5.visible=false
	room5.next.connect(next_room5)
	room5.prev.connect(prev_room5)
	rooms[0].visible=true
	rooms[0].hide_prev_button()

# Called every frame. 'delta' is the elapsed time since the previous frame.
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	#if (rooms[indice].all_placed()&&indice<len(rooms)-1):
		pass
func move_to_prev():
	if (indice==4):
		rooms[indice].visible=false
		indice-=1
		room5.visible=true
	else:
		rooms[indice].visible=false
		indice-=1
		rooms[indice].visible=true
		if (indice==0):
			rooms[indice].hide_prev_button()

func move_to_next():
	if (indice==3):
		rooms[indice].visible=false
		room5.visible=true
	elif (indice==4):
		rooms[indice].visible=false
		#end.visible=true
	else:
		rooms[indice].visible=false
		indice+=1
		rooms[indice].visible=true

func prev_room5():
	room5.visible=false
	rooms[indice].visible=true

func next_room5():
	room5.visible=false
	indice+=1
	rooms[indice].visible=true
