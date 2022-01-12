extends StaticBody2D


func _on_terror_ghost_body_entered(body):
	if (body.key == 1):
		get_node("terror_ghost/vision").visible = 1
		get_node("terror_ghost/vision/AnimationPlayer").play("terror")
		yield(get_tree().create_timer(0.5),"timeout")
		queue_free()

