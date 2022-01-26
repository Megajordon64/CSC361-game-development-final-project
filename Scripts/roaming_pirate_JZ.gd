extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var collision
var velocity = Vector2()
var movement = Vector2(-2,0)
var left = true
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	self.position += movement
	collision = move_and_collide(velocity * _delta)
	if collision:
		if (collision.collider.is_in_group("player")):
			collision.collider.death();

func movement_change():
	if(left == true):
		$AnimatedSprite.flip_h = true
		movement = Vector2(2,0)
		left = false
	else:
		$AnimatedSprite.flip_h = false
		movement = Vector2(-2,0)
		left = true


func _on_Timer_timeout():
	movement_change()
