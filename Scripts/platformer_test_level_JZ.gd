extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	var cannon_scene = load("res://Scenes/cannon_jz.tscn")
	var instance_of_cannon = cannon_scene.instance()
	instance_of_cannon.set_position(Vector2(896,480))
	add_child(instance_of_cannon)
	
	var cannonball_scene = load("res://Scenes/cannonball_jz.tscn")
	var instance_of_cannonball = cannonball_scene.instance()
	instance_of_cannonball.set_position(Vector2(800,460))
	add_child(instance_of_cannonball)
	
	var spikes_scene = load("res://Scenes/spikes_jz.tscn")
	var instance_of_spikes = spikes_scene.instance()
	instance_of_spikes.set_position(Vector2(672,370))
	add_child(instance_of_spikes)
	
	var player_scene = load("res://Scenes/player_pirate_JZ.tscn")
	var instance_of_player = player_scene.instance()
	instance_of_player.set_position(Vector2(200,300))
	add_child(instance_of_player)
	
	# DG
	var bluepirate_scene = load("res://Scenes/bluepirate_dg.tscn")
	var instance_of_bluepirate = bluepirate_scene.instance()
	instance_of_bluepirate.set_name("bluepirate_scene")
	add_child(instance_of_bluepirate)
	
	# DG
	var chest_scene = load("res://Scenes/chest_dg.tscn")
	var instance_of_chest = chest_scene.instance()
	instance_of_chest.set_name("chest_scene")
	add_child(instance_of_chest)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
