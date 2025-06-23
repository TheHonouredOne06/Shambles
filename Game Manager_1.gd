extends Node

@onready var score_count = $"../UI Manager_1/ScoreCount"
@onready var score_count2 = $"../UI Manager_1/Panelvictory_1/Score/ScoreCount"






var score = 0
# Called when the node enters the scene tree for the first time.
func add_point():
	score += 1
	print(score)
	score_count.text = str(score)
	score_count2.text = str(score)
