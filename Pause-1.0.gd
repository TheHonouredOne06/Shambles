extends Node2D

@onready var panel_pause = %PanelPause
@onready var panelvictory = $"../Panelvictory"

# Called when the node enters the scene tree for the first time.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var esc_pressed = Input.is_action_just_pressed("pause")
	if (esc_pressed == true):
		get_tree().paused = true
		panel_pause.show()


func _on_resume_pressed():
	panel_pause.hide()
	get_tree().paused = false


func _on_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_level_selection_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main_menu3.tscn")


func _on_retry_pressed():
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/game-1.0.tscn")
