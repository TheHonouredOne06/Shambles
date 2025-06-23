extends Node
#@onready var score_count = $"../Player/Pause/PanelPause/Panel/ScoreCount"
var current_checkpoint : Checkpoint
var current_checkpoint_1 : Checkpoint_1
var player : Player
var player_1 : Player_1
#var score = 0
func respawn_player():
	if current_checkpoint != null:
		player.position = current_checkpoint.global_position
func respawn_player_1():
	if current_checkpoint_1 != null:
		player_1.position = current_checkpoint_1.global_position


#func gain_diamond(diamonds_gained):
#	emit_signal("gained_diamond" , diamonds_gained)
#func add_point():
#	score += 1
#	print(score)
#	score_count.text = str(score)
