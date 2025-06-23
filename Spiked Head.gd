extends AnimatableBody2D


# Called when the node enters the scene tree for the first time.


func _on_area_2d_area_entered(area):
	if area.get_parent() is Player:
		area.get_parent().die()
