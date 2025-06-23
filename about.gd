extends Node2D
@onready var audio_stream_player_2d = $AudioStreamPlayer2D


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")
	audio_stream_player_2d.play()
