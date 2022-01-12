extends StaticBody2D


func _on_corridor_body_entered(body):
	if (body.key == 1):
		get_node("corridor/vision").visible = 1
		yield(get_tree().create_timer(1),"timeout")
		queue_free()

