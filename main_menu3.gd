extends Node
@onready var audio_stream_player_2d = $AudioStreamPlayer2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/difficulty.tscn")
	audio_stream_player_2d.play() 


func _on_level_1_0_pressed():
	get_tree().change_scene_to_file("res://Scenes/tutorial_screen-1.0.tscn") 
	audio_stream_player_2d.play()


func _on_level_2_0_pressed():
	get_tree().change_scene_to_file("res://Scenes/tutorial_screen_1-1.0.tscn")
	audio_stream_player_2d.play()
