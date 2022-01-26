# Dylan Groshens

extends Node2D

# Loads in player pirate scene
func _ready():

	var player_scene = load("res://Scenes/player_pirate_JZ.tscn")
	var instance_of_player = player_scene.instance()
	instance_of_player.set_position(Vector2(200,300))
	add_child(instance_of_player)
	
	pass
