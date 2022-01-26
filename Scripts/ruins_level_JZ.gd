extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var player_scene = load("res://Scenes/player_pirate_JZ.tscn")
	var instance_of_player = player_scene.instance()
	instance_of_player.set_position(Vector2(200,-100))
	add_child(instance_of_player)
	
	var cannonball_scene = load("res://Scenes/cannonball_jz.tscn")
	var instance_of_cannonball = cannonball_scene.instance()
	instance_of_cannonball.set_position(Vector2(1950,-95))
	add_child(instance_of_cannonball)
	
	var instance_of_cannonball2 = cannonball_scene.instance()
	instance_of_cannonball2.set_position(Vector2(1950,-287))
	add_child(instance_of_cannonball2)
	
	var instance_of_cannonball3 = cannonball_scene.instance()
	instance_of_cannonball3.set_position(Vector2(1950,-479))
	add_child(instance_of_cannonball3)
	
	var instance_of_cannonball4 = cannonball_scene.instance()
	instance_of_cannonball4.set_position(Vector2(1950,-671))
	add_child(instance_of_cannonball4)
	
	var instance_of_cannonball5 = cannonball_scene.instance()
	instance_of_cannonball5.set_position(Vector2(2600,-1576))
	add_child(instance_of_cannonball5)
	
	var instance_of_cannonball6 = cannonball_scene.instance()
	instance_of_cannonball6.set_position(Vector2(2600,-1376))
	add_child(instance_of_cannonball6)

	var cannon_scene = load("res://Scenes/cannon_jz.tscn")
	var instance_of_cannon = cannon_scene.instance()
	instance_of_cannon.set_position(Vector2(2000,-90))
	add_child(instance_of_cannon)
	
	var instance_of_cannon2 = cannon_scene.instance()
	instance_of_cannon2.set_position(Vector2(2000,-282))
	add_child(instance_of_cannon2)
	
	var instance_of_cannon3 = cannon_scene.instance()
	instance_of_cannon3.set_position(Vector2(2000,-474))
	add_child(instance_of_cannon3)
	
	var instance_of_cannon4 = cannon_scene.instance()
	instance_of_cannon4.set_position(Vector2(2000,-665))
	add_child(instance_of_cannon4)
	
	var instance_of_cannon5 = cannon_scene.instance()
	instance_of_cannon5.set_position(Vector2(2680,-1575))
	add_child(instance_of_cannon5)
	
	var instance_of_cannon6 = cannon_scene.instance()
	instance_of_cannon6.set_position(Vector2(2680,-1375))
	add_child(instance_of_cannon6)
	
	# DG
	var bluepirate_scene = load("res://Scenes/bluepirate_dg.tscn")
	var instance_of_bluepirate = bluepirate_scene.instance()
	instance_of_bluepirate.set_position(Vector2(2100,-100))
	add_child(instance_of_bluepirate)
	
	var instance_of_bluepirate2 = bluepirate_scene.instance()
	instance_of_bluepirate2.set_position(Vector2(2100,-285))
	add_child(instance_of_bluepirate2)
	
	var instance_of_bluepirate3 = bluepirate_scene.instance()
	instance_of_bluepirate3.set_position(Vector2(2100,-475))
	add_child(instance_of_bluepirate3)
	
	var instance_of_bluepirate4 = bluepirate_scene.instance()
	instance_of_bluepirate4.set_position(Vector2(2100,-670))
	add_child(instance_of_bluepirate4)
	
	var spikes_scene = load("res://Scenes/spikes_jz.tscn")
	var instance_of_spikes = spikes_scene.instance()
	instance_of_spikes.set_position(Vector2(900,-15))
	add_child(instance_of_spikes)
	
	var instance_of_spikes2 = spikes_scene.instance()
	instance_of_spikes2.set_position(Vector2(800,-15))
	add_child(instance_of_spikes2)
	
	var spikes_scene3 = load("res://Scenes/upside_down_spikes_jz.tscn")
	var instance_of_spikes3 = spikes_scene3.instance()
	instance_of_spikes3.set_position(Vector2(800,-307))
	add_child(instance_of_spikes3)
	
	var instance_of_spikes6 = spikes_scene.instance()
	instance_of_spikes6.set_position(Vector2(1000,-1170))
	add_child(instance_of_spikes6)
	
	var instance_of_spikes4 = spikes_scene.instance()
	instance_of_spikes4.set_position(Vector2(1100,-1170))
	add_child(instance_of_spikes4)
	
	var instance_of_spikes5 = spikes_scene.instance()
	instance_of_spikes5.set_position(Vector2(1200,-1170))
	add_child(instance_of_spikes5)
	
	var roaming_pirate_scene = load("res://Scenes/roaming_pirate_JZ.tscn")
	var instance_of_roaming_pirate = roaming_pirate_scene.instance()
	instance_of_roaming_pirate.set_position(Vector2(830,-1550))
	add_child(instance_of_roaming_pirate)
	
	var roaming_pirate_scene2 = load("res://Scenes/roaming_pirate_JZ.tscn")
	var instance_of_roaming_pirate2 = roaming_pirate_scene2.instance()
	instance_of_roaming_pirate2.set_position(Vector2(1700,-1550))
	add_child(instance_of_roaming_pirate2)
	
	var chest_scene = load("res://Scenes/chest2_dg.tscn")
	var instance_of_chest = chest_scene.instance()
	instance_of_chest.set_position(Vector2(2500, -100))
	add_child(instance_of_chest)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
