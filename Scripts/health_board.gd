extends Node2D

export (int) var speed = 50

func _ready():
	pass

func _physics_process(delta):
	position += transform.y * speed * delta
