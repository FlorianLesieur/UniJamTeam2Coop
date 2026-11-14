extends Control


signal espritChoose
signal physiqueChoose

func pysique() :
	physiqueChoose.emit()


func esprit() :
	espritChoose.emit()
