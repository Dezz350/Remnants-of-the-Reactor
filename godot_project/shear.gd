extends StaticBody2D


func _on_shear2_body_entered(body):
	body.shear = 1
	queue_free()

