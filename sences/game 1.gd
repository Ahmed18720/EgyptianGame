extends Node2D



var score=0

@onready var score_label: Label = $"score label"


func add_point():
	score +=1
	score_label.text ="you collected " + str(score)  + " coins."

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "player":
		get_tree().change_scene_to_file("res://sences/level_2.tscn")
