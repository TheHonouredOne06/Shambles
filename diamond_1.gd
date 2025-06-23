extends Area2D


@onready var game_manager_1 = %"Game Manager_1"


func _on_body_entered(body):
	game_manager_1.add_point()
	
	queue_free()




#func _on_area_entered(area):
	#GameManger.gain_diamond(1)
#queue_free()
