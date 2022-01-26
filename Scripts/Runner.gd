extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var music_scene = preload("res://Scenes/Music.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var music = music_scene.instance()
	get_parent().call_deferred("add_child", music)
	#get_tree().change_scene("res://Scenes/shmup_test_GB.tscn")
	#get_tree().change_scene("res://Scenes/platformer_test_level_JZ.tscn")
	#get_tree().change_scene("res://Scenes/GameScene.tscn")
	get_tree().change_scene("res://Scenes/main_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
