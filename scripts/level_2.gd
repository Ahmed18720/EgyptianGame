extends Node2D

var score=0

@onready var score_label: Label = $"game manager/score Label"



func add_point():
	score +=1
	score_label.text ="you collected " + str(score)  + " coins."
