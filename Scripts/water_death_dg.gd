# DG

extends Area2D

func _ready():
	pass 

# Resets scene simulating death of player
func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		get_tree().reload_current_scene()
	pass
