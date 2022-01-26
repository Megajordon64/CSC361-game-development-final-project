extends Node2D


onready var pship_scene = preload("res://Scenes/PlayerShip_GB.tscn")
onready var eship_scene = preload("res://Scenes/enemyship_GB.tscn")
onready var end_scene = preload("res://Scenes/end_goal.tscn")

var can_spawn = false
var end = false

func spawn():
	can_spawn = false
	var eship_instance = eship_scene.instance()
	eship_instance.set_name("Enemy")
	eship_instance.position.y = $spawnpos1.position.y
	eship_instance.position.x = rand_range(10, 1014)
	eship_instance.scale = Vector2(0.7, 0.7)
	add_child(eship_instance)
	
	$spawn_timer.start()

# Called when the node enters the scene tree for the first time.
func _ready():
	var pship_instance = pship_scene.instance()
	pship_instance.set_name("Player")
	pship_instance.position = Vector2(512,512)
	pship_instance.scale = Vector2(0.7, 0.7)
	pship_instance.health = 3
	add_child(pship_instance)
	$spawn_timer.start()
	$ConfirmationDialog.add_button("Exit", false, "exit")
	$end_spawn.start()

func _process(delta):
	if can_spawn && !end:
		spawn()
	if global.player_health == 0:
		$ConfirmationDialog.popup_centered_clamped()

func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/platformer_test_level_JZ.tscn")


func _on_spawn_timer_timeout():
	can_spawn = true


func _on_ConfirmationDialog_confirmed():
	get_tree().change_scene("res://Scenes/shmup_test_GB.tscn")
	


func _on_ConfirmationDialog_custom_action(action):
	if action == "exit":
		get_tree().change_scene("res://Scenes/main_menu.tscn")


func _on_end_spawn_timeout():
	end = true
	var end = end_scene.instance()
	end.position = Vector2(0,-64)
	add_child(end)
