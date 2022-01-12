extends StaticBody2D

var hide_carpet = 1

func _on_Area2D_body_entered(body):
	if hide_carpet == 1 :
		get_node("AnimationPlayer").play("hide")
		hide_carpet = 0
	pass # Replace with function body.
