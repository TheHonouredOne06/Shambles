extends Node
@onready var score_count_2 = $"../UI Manager/ScoreCount2"
@onready var score_count = $"../Player/Camera2D/Panelvictory/Score/ScoreCount"





var score = 0
# Called when the node enters the scene tree for the first time.
func add_point():
	score += 1
	print(score)
	score_count_2.text = str(score)
	score_count.text = str(score)
