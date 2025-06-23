extends StaticBody2D

var cannon_ball = load("res://Scenes/cannon_ball.tscn")

@export var shooting : bool
var firing_rate = 2

@onready var animation_player = $AnimationPlayer
@onready var firepoint = $firepoint

func _ready():
	shooting = true
	shoot()
	
func shoot():
	while shooting:
		animation_player.play("fire")
		await get_tree().create_timer(firing_rate).timeout
		
func fire():
	var spawn_ball = cannon_ball.instantiate()
	spawn_ball.direction = firepoint.scale.x
	spawn_ball.global_position = firepoint.position
	add_child(spawn_ball)
