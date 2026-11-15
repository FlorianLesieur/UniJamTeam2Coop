extends StaticBody2D
class_name PhysiqueButton

signal pressed(id : int)

@onready var soundeffect = $buttonClick

func play_sound() -> void:
	soundeffect.play()
