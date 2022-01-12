extends StaticBody2D


func _on_key2_body_entered(body):
	body.key = 1
	queue_free()
	pass # Replace with function body.
