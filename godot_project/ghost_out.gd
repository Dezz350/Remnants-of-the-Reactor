extends StaticBody2D


func _on_ghost_outside_body_entered(body):
	if (body.shear == 1):
		get_node("ghost_outside/vision").visible = 1
		yield(get_tree().create_timer(3),"timeout")
		queue_free()
	pass # Replace with function body.
