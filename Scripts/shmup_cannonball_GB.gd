extends Node2D

export (int) var speed = 400

func _physics_process(delta):
	position += transform.y * speed * delta

func _ready():
	pass


func _on_Area2D_body_entered(body):
	
	pass


func _on_Area2D_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.is_in_group("player") || area.is_in_group("cleanup"):
		queue_free()
