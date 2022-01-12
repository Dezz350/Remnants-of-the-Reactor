extends StaticBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.




func _on_tangle_check_body_entered(body):
	if (body.shear == 0):
		$tangled.play("tangled")
	else:
		get_parent().play("open")
		queue_free()
	pass # Replace with function body.
