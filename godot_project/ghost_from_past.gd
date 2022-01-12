extends KinematicBody2D


var velocity = Vector2()
var speed = 75

func _physics_process(delta):

	if get_parent().start_ending == 1:
		velocity = (get_parent().human_target - position).normalized() * speed
		if (get_parent().human_target - position).length() > 5:
			velocity = move_and_slide(velocity)
