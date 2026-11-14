extends Button
class_name Piece

var moving := false
var speed= 128
var pos_pressed := Vector2.ZERO
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if moving :
		var position_souris= get_local_mouse_position()
		position = lerp(position, position - pos_pressed + position_souris, delta * speed)
		#position.x=move_toward(position.x,position.x-pos_x_pressed+position_souris.x,delta*speed)
		#position.y=move_toward(position.y,position.y-pos_y_pressed+position_souris.y,delta*speed)



func _on_button_down() -> void:
	moving = true
	var position_souris= get_local_mouse_position()
	pos_pressed=position_souris


func _on_button_up() -> void:
	moving = false
