extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: Node2D) -> void:
	get_tree().change_scene_to_file("res://sences/lose.tscn")
	Engine.time_scale=0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	

func _on_timer_timeout() -> void: 
	Engine.time_scale=1.0
	get_tree().change_scene_to_file("res://sences/control_2.tscn")


func _on_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://sences/control_2.tscn")
	
