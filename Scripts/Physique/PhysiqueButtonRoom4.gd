extends PhysiqueButton

@export var id : int = 0

func press() :
	pressed.emit(id)
