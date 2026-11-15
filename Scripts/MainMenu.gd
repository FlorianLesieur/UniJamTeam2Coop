extends Control
class_name MainMenu

signal physicPlay
signal espritPlay




func _on_selection_esprit_choose() -> void:
	espritPlay.emit()


func _on_selection_physique_choose() -> void:
	physicPlay.emit()
