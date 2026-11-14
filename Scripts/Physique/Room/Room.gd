extends Node2D
class_name Room

@onready var entry = $EntrySpawn
@onready var exit = $ExitSpawn
@onready var middle = $Middle
signal retour
signal sorti


func _on_entree_body_entered(body: Node2D) -> void:
	if body is Player:
		retour.emit()


func _on_sortie_body_entered(body: Node2D) -> void:
	if body is Player:
		sorti.emit()


func _on_room_retour() -> void:
	pass # Replace with function body.


func _on_room_sorti() -> void:
	pass # Replace with function body.
