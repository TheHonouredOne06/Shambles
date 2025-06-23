extends Node
@onready var audio_stream_player_2d = $AudioStreamPlayer2D



# Called when the node enters the scene tree for the first time.



func _on_play_pressed():
	get_tree().change_scene_to_file("res://Scenes/difficulty.tscn")
	audio_stream_player_2d.play()


func _on_quit_pressed():
	get_tree().quit()
	audio_stream_player_2d.play()


func _on_about_pressed():
	get_tree().change_scene_to_file("res://Scenes/about.tscn")
	audio_stream_player_2d.play()
	
