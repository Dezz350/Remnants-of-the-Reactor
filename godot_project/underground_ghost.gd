extends StaticBody2D


func _on_underarea_body_entered(body):
	get_node("underarea/vision").visible = 1
	yield(get_tree().create_timer(2),"timeout")
	queue_free()
	pass # Replace with function body.
