extends Node2D
@onready var animation_player = $AnimationPlayer

var playtime = 5
func _ready():
	await get_tree().create_timer(playtime).timeout
	next_scene()
func next_scene():
	animation_player.play("Display")
	get_tree().change_scene_to_file("res://Scenes/game.tscn") 
