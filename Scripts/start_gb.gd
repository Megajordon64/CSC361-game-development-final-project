extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_start_gb_pressed():
	get_tree().change_scene("res://Scenes/platformer_test_level_JZ.tscn")
