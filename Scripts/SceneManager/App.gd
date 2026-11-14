extends Node

@onready var physical : Node2D = $GamePhysical
@onready var spirit : Control = $GameSpirit
@onready var menu : Control = $MainMenu

func play_physical() :
	physical.show()
	menu.hide()

func play_spirit() : 
	spirit.show()
	menu.hide()
