# DG

extends Button

func _ready():
	
	pass 


# Returns to main menu on button press
func _on_Button_pressed():
	get_tree().change_scene("res://Scenes/main_menu.tscn")
	pass
