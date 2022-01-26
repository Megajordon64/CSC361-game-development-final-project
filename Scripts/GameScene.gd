extends Node2D

#GB
onready var pship_scene = preload("res://Scenes/PlayerShip_GB.tscn")
onready var eship_scene = preload("res://Scenes/enemyship_GB.tscn")
onready var island_scene = preload("res://Scenes/island_GB.tscn")
func _ready():
	
	#GB
	var pship_instance = pship_scene.instance()
	pship_instance.set_name("Player_ship")
	pship_instance.position = Vector2(100, 500)
	add_child(pship_instance)
	
	var eship_instance = eship_scene.instance()
	eship_instance.set_name("Enemy_ship")
	eship_instance.position = Vector2(300, 500)
	add_child(eship_instance)
	
	var island_instance = island_scene.instance()
	island_instance.set_name("Island_1")
	island_instance.position = Vector2(500, 500)
	island_instance.scale = Vector2(0.5, 0.5)
	add_child(island_instance)
	
	# DG
	var chest_scene = load("res://Scenes/chest_dg.tscn")
	var instance_of_chest = chest_scene.instance()
	instance_of_chest.set_name("chest_scene")
	add_child(instance_of_chest)
	
	var bluepirate_scene = load("res://Scenes/bluepirate_dg.tscn")
	var instance_of_bluepirate = bluepirate_scene.instance()
	instance_of_bluepirate.set_name("bluepirate_scene")
	add_child(instance_of_bluepirate)
	
	var grasstile_scene = load("res://Scenes/grasstile_dg.tscn")
	var instance_of_grasstile = grasstile_scene.instance()
	instance_of_grasstile.set_name("grasstile_scene")
	add_child(instance_of_grasstile)
	
	
	# JZ
	var spikes_scene = load("res://Scenes/spikes_jz.tscn")
	var instance_of_spikes = spikes_scene.instance()
	instance_of_spikes.set_name("spikes_scene")
	add_child(instance_of_spikes)
	
	var cannon_scene = load("res://Scenes/cannon_jz.tscn")
	var instance_of_cannon = cannon_scene.instance()
	instance_of_cannon.set_name("lone_cannon_scene")
	add_child(instance_of_cannon)
	
	var cannonball_scene = load("res://Scenes/cannonball_jz.tscn")
	var instance_of_cannonball = cannonball_scene.instance()
	instance_of_cannonball.set_name("cannonball_scene")
	add_child(instance_of_cannonball)
