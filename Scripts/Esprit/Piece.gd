extends Button
class_name Piece

var moving := false
var speed= 64
var pos_pressed := Vector2.ZERO
var goutière = 10
var pos_min_x = 0
var pos_min_y = 0
var pos_max_x=1152-size.x*scale.x
var pos_max_y=648-size.y*scale.y
var position_visee #position visée par la souris
var pos_key : Vector2
var seuil = 2500 #La distance est renvoyé AU CARRE

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	button_down.connect(_on_button_down)
	button_up.connect(_on_button_up)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if moving :
		var position_souris= get_local_mouse_position()
		position_visee=position - pos_pressed + position_souris
		if (position_visee.x<pos_min_x+goutière):
			position_visee.x=pos_min_x+goutière
		if (position_visee.y<pos_min_y+goutière):
			position_visee.y=pos_min_y+goutière
		if (position_visee.x>pos_max_x-goutière):
			position_visee.x=pos_max_x-goutière
		if (position_visee.y>pos_max_y-goutière):
			position_visee.y=pos_max_y-goutière
		position = lerp(position, position_visee, delta * speed)
		print("position : ",position)
		#position.x=move_toward(position.x,position.x-pos_x_pressed+position_souris.x,delta*speed)
		#position.y=move_toward(position.y,position.y-pos_y_pressed+position_souris.y,delta*speed)


func _on_button_down() -> void:
	moving = true
	var position_souris= get_local_mouse_position()
	pos_pressed=position_souris

func _on_button_up() -> void:
	moving = false

func distance(v1,v2):
	var vect_temp=v1-v2
	return (vect_temp.x*vect_temp.x+vect_temp.y*vect_temp.y)

func is_placed() ->bool:
	if moving:
		return false
	var pos_center=position
	pos_center.x+=size.x/2
	pos_center.y+=size.y/2
	if (distance(pos_center,pos_key)<seuil):
		return true
	return false
