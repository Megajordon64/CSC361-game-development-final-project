# DG

extends Area2D


func _ready():
	pass

# Checks if physics object enters the area defined
func _on_Area2D_body_entered(body):
	print("Good job!")
	get_tree().change_scene("res://Scenes/main_menu.tscn")
	pass
