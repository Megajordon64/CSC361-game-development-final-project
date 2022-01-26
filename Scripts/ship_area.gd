extends Area2D

func _ready():
	pass


func _on_ship_area_body_entered(body):
	get_tree().change_scene("res://Scenes/shmup_test_GB.tscn")
	pass
