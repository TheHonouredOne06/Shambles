extends Node2D

var Head = load("res://Scenes/head.tscn")

@export var spawning : bool
var firing_rate = 2

@onready var spawning_point = $"spawning point"
@onready var animation_player = $AnimationPlayer

func _ready():
	spawning = true
	shoot()
	
func shoot():
	while spawning:
		animation_player.play("spawn")
		await get_tree().create_timer(firing_rate).timeout
		
func fire():
	var spawn_head = Head.instantiate()

	spawn_head.global_position = spawning_point.position
	add_child(spawn_head)
