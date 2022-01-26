extends Button

# will switch to shoot em up test level when pressed
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/shmup_test_GB.tscn")
