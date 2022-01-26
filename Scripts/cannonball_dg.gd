extends KinematicBody2D

var initial_pos
var collision
var velocity = Vector2()
func _ready():
	initial_pos = self.get_global_position()
	$AudioStreamPlayer2D.play()

func _physics_process(_delta):
	self.position += Vector2(3,0)
	collision = move_and_collide(velocity * _delta)
	if collision:
		if (collision.collider.is_in_group("player")):
			collision.collider.death();

func _on_Timer_timeout():
	self.position = initial_pos
	$AudioStreamPlayer2D.play()
