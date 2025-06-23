extends Node2D
const SPEED = 30
var direction = 1
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite_2d = $AnimatedSprite2D
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * SPEED * delta


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player:
		area.get_parent().die()
