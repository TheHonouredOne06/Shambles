extends Area2D

@onready var panelvictory_1 = %Panelvictory_1
@onready var score_count = $"../UI Manager_1/ScoreCount"
@onready var timer = $"../UI Manager_1/Timer"
@onready var animated_sprite_2d = $"../UI Manager_1/AnimatedSprite2D"
@onready var player_1 = $"../Player_1"







func _on_body_entered(player_1):
	get_tree().paused = true
	panelvictory_1.show()
	score_count.queue_free()
	timer.queue_free()
	animated_sprite_2d.queue_free()


func _on_area_entered(area):
	if area.get_parent() is Player or Player_1:
		get_tree().paused = true
		panelvictory_1.show()
		score_count.queue_free()
		timer.queue_free()
		animated_sprite_2d.queue_free()
