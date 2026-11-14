extends Button

var is_pressed := false
var speed= 400
var pos_x_pressed
var pos_y_pressed
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if is_pressed :
		var position_souris= get_local_mouse_position()
		position.x=move_toward(position.x,position.x-pos_x_pressed+position_souris.x,delta*speed)
		position.y=move_toward(position.y,position.y-pos_y_pressed+position_souris.y,delta*speed)
	

func _on_button_down() -> void:
	is_pressed=true
	var position_souris= get_local_mouse_position()
	pos_x_pressed=position_souris.x
	pos_y_pressed=position_souris.y


func _on_button_up() -> void:
	is_pressed=false
