extends StaticBody2D
class_name PhysiqueButton

signal pressed 

func press() :
	pressed.emit()
	print("button pressed")
