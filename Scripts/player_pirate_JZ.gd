extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# variables that control player physics
const SPEED = 200
const GRAVITY = 10
const JUMP_POWER = -400
const FLOOR = Vector2(0,-1)
var initial
var collision
var velocity = Vector2()
var on_ground = false
var direction = 0
var walking = false
# Called when the node enters the scene tree for the first time.
func _ready():
	initial = self.get_global_position()
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func death():
	self.position = initial

# function that handles basic jumping
func jump():
	if (on_ground == true):
			velocity.y = JUMP_POWER
			on_ground = false
			

# function that cuts reduces a jumps velocity once the butto is released allowing the player to control the height of their jump
func short_jump():
	if (velocity.y < -100):
		velocity.y = -100


func _physics_process(_delta):
	walking = false
	# handles right player movement
	if(Input.is_action_pressed("ui_right")):
		velocity.x = SPEED
		direction = 0
		walking = true
		#$AudioStreamPlayer.play()
		
	# handles left player movement
	elif(Input.is_action_pressed("ui_left")):
		velocity.x = -SPEED
		direction = 1
		walking = true
		#$AudioStreamPlayer.play()
	else:
		#stops player dead in their tracks when either direction is not pressed
		velocity.x = 0
		
	# controls when the moving animation plays
	if (velocity.x != 0):
		$AnimatedSprite.play("run")
		
	else:
		$AnimatedSprite.play("idle")
		
	# controls when the sprite is flipped to represent what direction the character is moving
	if(direction == 0):
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.flip_h = true
		
	# calls jumping and short jumping functions when spacebar is pressed and released
	if(Input.is_action_pressed("ui_accept")):
		jump()
	
	if(Input.is_action_just_released("ui_accept")):
		short_jump()
	# has the player constantly being affeted by gravity
	velocity.y += GRAVITY
	
	# constantly checks if player is on the ground so that they cannot jump in the air
	if(is_on_floor()):
		on_ground = true
	else:
		on_ground = false
	
	velocity = move_and_slide(velocity, FLOOR)
	
	collision = move_and_collide(velocity * _delta)
	if collision:
		if (collision.collider.is_in_group("hazard")):
			death();
		

#play walking audio roughly everytime the player takes a step visually
#added this to fix walking audio playing every frame 
func _on_AnimatedSprite_frame_changed():
	if (walking == true) && (is_on_floor()):
		if (($AnimatedSprite.frame == 1) || ($AnimatedSprite.frame == 3)):
			$AudioStreamPlayer.play()

