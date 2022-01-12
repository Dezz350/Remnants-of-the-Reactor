extends StaticBody2D


func _on_meat2_body_entered(body):
	body.meat = 1
	queue_free()
	pass # Replace with function body.
