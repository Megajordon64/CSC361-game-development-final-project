extends KinematicBody2D

export (int) var speed = 100
export (PackedScene) var bullet
export (PackedScene) var hpack_s

var rng = RandomNumberGenerator.new()
var health = 2

func shoot():
	var b = bullet.instance()
	$shot_timer.start()
	#random cannon sound for player every shot
	rng.randomize()
	var rand = rng.randi_range(1,3)
	if rand == 1:
		$cannon1.play()
	elif rand == 2:
		$cannon2.play()
	else:
		$cannon3.play()
	#setting projectile init pos
	get_parent().add_child(b)
	$shot_pivot.look_at(global.player_pos)
	b.global_transform = $shot_pivot/shot_pos.global_transform

func die():
	rng.randomize()
	var percent = rng.randf()
	if percent > 0.7:
		var hpack = hpack_s.instance()
		hpack.position = position
		hpack.scale = Vector2(0.8,0.8)
		get_parent().add_child(hpack)
	queue_free()

func _process(delta):
	if health == 2:
		$Sprite.visible = true
		$Health1.visible = false
	elif health == 1:
		$Sprite.visible = false
		$Health1.visible = true
	elif health == 0:
		die()

func _physics_process(delta):
	position += transform.y * speed * delta

func _ready():
	pass


func _on_shot_timer_timeout():
	shoot()

func _on_Area2D_area_entered(area):
	if area.is_in_group("enemy_delete"):
		queue_free()
	elif area.is_in_group("player_bullet"):
		health -= 1
