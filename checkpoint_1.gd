extends Node2D
class_name Checkpoint_1
@export var spawnpoint = false
@onready var animation_player = $AnimationPlayer
func _ready():
	if spawnpoint:
		activate()
var activated = false
func activate():
	GameManger.current_checkpoint_1 = self
	activated = true
	animation_player.play("activated")



func _on_area_2d_area_entered(area):
	if area.get_parent() is Player_1 && !activated:
		activate()
