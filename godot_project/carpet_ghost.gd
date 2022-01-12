extends StaticBody2D





func _on_Area2D_body_entered(body):
	get_node("Area2D/vision").visible = 1
	yield(get_tree().create_timer(3),"timeout")
	queue_free()
	pass # Replace with function body.
