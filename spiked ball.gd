extends Node2D

var direction
var speed = 350
var lifetime = 1.8
var hit = false

func _ready():
	await get_tree().create_timer(lifetime).timeout
	die()
func _physics_process(delta):
	position.x += abs(speed * delta) * direction

func die():
	hit = true
	speed = 0
	$AnimationPlayer.play("Hit")


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player_1 && !hit:
		area.get_parent().take_damage(1)
		die()
