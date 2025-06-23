extends Area2D


@onready var game_manager = %"Game Manager"


func _on_body_entered(_body):
	game_manager.add_point()
	
	queue_free()




#func _on_area_entered(area):
	#GameManger.gain_diamond(1)
#queue_free()
