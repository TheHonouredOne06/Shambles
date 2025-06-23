extends StaticBody2D

var spiked_ball = load("res://Scenes/spiked_ball.tscn")

@export var hooting : bool
var firing_rate = 2
@onready var animation_player = $AnimationPlayer
@onready var firingpoint = $firingpoint


func _ready():
	hooting = true
	shoot()
	
func shoot():
	while hooting:
		animation_player.play("fire ball")
		await get_tree().create_timer(firing_rate).timeout
		
func fire():
	var spawn_ball = spiked_ball.instantiate()
	spawn_ball.direction = firingpoint.scale.x
	spawn_ball.global_position = firingpoint.position
	add_child(spawn_ball)
