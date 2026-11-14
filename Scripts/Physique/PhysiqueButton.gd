extends StaticBody2D
class_name PhysiqueButton

<<<<<<< Updated upstream
signal pressed 

func press() :
	pressed.emit()
	print("button pressed")
=======
@warning_ignore("unused_signal")
signal pressed(id : int)
>>>>>>> Stashed changes
