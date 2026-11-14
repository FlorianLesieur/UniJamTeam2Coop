extends PhysiqueButton

var times_pressed = 0

var countdown : Timer

func press() :
	countdown.stop()
	times_pressed += 1
	
	countdown.start(1)

func _on_timeout():
	if times_pressed == 4:
		pressed.emit()
		print("Button pressed exactly 4 times")
	else:
		times_pressed = 0
		print("Button pressed an inexact amount of times")
