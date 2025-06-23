extends Node2D

@onready var audio_stream_player_2d = $AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_easy_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu2.tscn")
	audio_stream_player_2d.play()


func _on_hard_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu3.tscn")
	audio_stream_player_2d.play()


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	audio_stream_player_2d.play()
