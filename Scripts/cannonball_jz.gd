extends Area2D


# holds starting starting position of cannonball to reset position later
# warning this line of code currently gives off an error, but it does not appear to affect the game
# in any significant way so far, will look at later more in depth
var initial_pos
#var collision
var velocity = Vector2()
# Called when the node enters the scene tree for the first time.
func _ready():
	#records cannons initial position and plays the sound effect for it firing
	initial_pos = self.get_global_position()
	$AudioStreamPlayer.play()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	# meant to represent the cannonball being fired 
	self.position += Vector2(-3,0)
	#collision = move_and_collide(velocity * _delta)
	#if collision:
		#if (collision.collider.is_in_group("player")):
			#collision.collider.death();
		

# intended to place the cannonball back at its original position (likely inside or in front of a 
#cannon) after enough time has passed in order to represent a cannon consecutively firing
func _reset_cannonball():
	self.position = initial_pos
	$AudioStreamPlayer.play()


func _on_cannonball_jz_body_entered(body):
	if(body.is_in_group("player")):
		body.death()
	
