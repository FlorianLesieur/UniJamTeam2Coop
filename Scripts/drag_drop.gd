extends Button
class_name Piece

var moving := false
var speed= 64
var pos_pressed := Vector2.ZERO
var pos_min_x = -10
var pos_min_y = -55
var pos_max_x=1140-size.x
var pos_max_y=591-size.y
var position_visee

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.x=pos_max_x
	position.y=pos_max_y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if moving :
		var position_souris= get_local_mouse_position()
		position_visee=position - pos_pressed + position_souris
		if (position_visee.x<pos_min_x):
			position_visee.x=pos_min_x
		if (position_visee.y<pos_min_y):
			position_visee.y=pos_min_y
		if (position_visee.x>pos_max_x):
			position_visee.x=pos_max_x
		if (position_visee.y>pos_max_y):
			position_visee.y=pos_max_y
		position = lerp(position, position_visee, delta * speed)
		#position.x=move_toward(position.x,position.x-pos_x_pressed+position_souris.x,delta*speed)
		#position.y=move_toward(position.y,position.y-pos_y_pressed+position_souris.y,delta*speed)



func _on_button_down() -> void:
	moving = true
	var position_souris= get_local_mouse_position()
	pos_pressed=position_souris


func _on_button_up() -> void:
	moving = false
