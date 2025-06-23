extends Node2D

var playtime = 10
func _ready():
	await get_tree().create_timer(playtime).timeout
	next_scene()
func next_scene():
	$Panel/AnimationPlayer.play("display")
	get_tree().change_scene_to_file("res://Scenes/game_1.tscn") 




func _on_skip_pressed():
	get_tree().change_scene_to_file("res://Scenes/game_1.tscn") 
