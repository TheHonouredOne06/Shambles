extends AnimatedSprite2D


#


func _on_body_entered(body):
	print("You Died!!")
	queue_free()
