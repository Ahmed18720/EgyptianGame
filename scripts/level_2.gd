extends Node2D

var score=0

@onready var score_label: Label = $"game manager/score Label"



func add_point():
	score +=1
	score_label.text ="you collected " + str(score)  + " coins."


func _on_win_zone_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://sences/level_3.tscn")
