extends StaticBody2D

func _ready():
	pass # Replace with function body.


func _on_keyhole_check_body_entered(body):
	if (body.key == 0):
		get_node("AnimationPlayer").play("keyhole")
	else:
		queue_free()
	pass # Replace with function body.
