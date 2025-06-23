extends Node





func _on_level_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/tutorial_screen.tscn") 



func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/difficulty.tscn") 

func _on_level_2_pressed():
	get_tree().change_scene_to_file("res://Scenes/tutorial_screen_1.tscn")
