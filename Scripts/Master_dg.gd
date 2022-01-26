# Dylan Groshens

extends HSlider

# Gets the Master audio bus and stores it in variable.
onready var _bus := AudioServer.get_bus_index("Master")

func _ready():
	# Converts decibal value to a linear value we can use to track volume.
	var volume = db2linear(AudioServer.get_bus_volume_db(_bus))
	value = volume

func _on_Master_value_changed(value):
	# Converts linear back to decibal value and passes it to the audio bus which changes the volume.
	AudioServer.set_bus_volume_db(_bus, linear2db(value))
