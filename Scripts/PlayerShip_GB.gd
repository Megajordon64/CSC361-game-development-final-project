extends KinematicBody2D

export (int) var speed = 200
export (int) var health = 3
export (PackedScene) var bullet

var velocity = Vector2()
var can_shoot = true
var explode = false
var rng = RandomNumberGenerator.new()

func init_audio():
	pass

func get_input():
	velocity = Vector2()
	# handles player movement
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	if Input.is_action_pressed("ui_select"):
		if can_shoot:
			shoot()
	# makes sure that diagonal movement has same speed
	velocity = velocity.normalized() * speed

#shoot projectiles
func shoot():
	var b = bullet.instance()
	$shot_timer.start()
	can_shoot = false
	#random cannon sound for player every shot
	rng.randomize()
	var rand = rng.randi_range(1,3)
	if rand == 1:
		$cannon_1.play()
	elif rand == 2:
		$cannon_2.play()
	else:
		$cannon_3.play()
	#setting projectile init pos
	get_parent().add_child(b)
	b.global_transform = $shot_pos.global_transform

func iframe():
	$kin_collision.set_deferred("disabled", true)
	$collision/CollisionShape2D.set_deferred("disabled", true)
	$iframe_timer.start()
	$AnimationPlayer.play("flash")

# play death animations
func die():
	$Health1.visible = false
	$msail_d.emitting = true
	$fsail_d.emitting = true
	$ship_d.emitting = true
	$boom.emitting = true
	if !explode:
		$explode.play()
		explode = true

func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)

func _ready():
	global.player_health = health

func _process(delta):
	global.player_pos = global_position
	if health == 3:
		$Sprite.visible = true
		$Health2.visible = false
		$Health1.visible = false
	elif health == 2:
		$Sprite.visible = false
		$Health2.visible = true
		$Health1.visible = false
	elif health == 1:
		$Sprite.visible = false
		$Health2.visible = false
		$Health1.visible = true
	elif health == 0:
		die()

func _on_shot_timer_timeout():
	can_shoot = true

#check collision
func _on_collision_body_shape_entered(body_id, body, body_shape, area_shape):
	#if enemy start i-frame flash and disable collision
	if body.is_in_group("enemy"):
		iframe()
		health -= 1
		global.player_health = health
	

#reenable collision when i-frame timer runs out
func _on_iframe_timer_timeout():
	$kin_collision.set_deferred("disabled", false)
	$collision/CollisionShape2D.set_deferred("disabled", false)


func _on_collision_area_shape_entered(area_id, area, area_shape, self_shape):
	if area.is_in_group("bullet"):
		iframe()
		health -= 1
		global.player_health = health
	if area.is_in_group("end"):
		get_tree().change_scene("res://Scenes/ruins_level_JZ.tscn")
	if area.is_in_group("health"):
		area.get_parent().queue_free()
		$hammer.play()
		if health < 3:
			health += 1
