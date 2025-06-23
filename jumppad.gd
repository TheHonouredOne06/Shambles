extends Node2D

@export var force = -500.0


func _on_area_2d_body_entered(body):
	if body.name == "Player_1":
		body.velocity.y = force
		
