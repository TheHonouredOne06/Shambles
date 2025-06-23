extends Area2D
@onready var panelvictory = $"../Player/Camera2D/Panelvictory"
@onready var score_count_2 = $"../UI Manager/ScoreCount2"
@onready var timer = $"../UI Manager/Timer"
@onready var animated_sprite_2d = $"../UI Manager/AnimatedSprite2D"


func _on_body_entered(_body):
	get_tree().paused = true
	panelvictory.show()
	score_count_2.queue_free()
	animated_sprite_2d.queue_free()
	timer.queue_free()
