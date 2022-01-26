# DG

extends Button

func _ready():
	
	pass 

# Changes scene to options menu on button press
func _on_Button_dg_pressed():
	get_tree().change_scene("res://Scenes/options_dg.tscn")
	pass 
