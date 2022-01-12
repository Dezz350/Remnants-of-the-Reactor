extends KinematicBody2D

var velocity = Vector2()
var speed = 100

func _physics_process(delta):

	if get_parent().stop_doggo == 0:
		velocity = (get_parent().human_target - position).normalized() * speed
		if (get_parent().human_target - position).length() > 5:
			velocity = move_and_slide(velocity)
		
	if get_parent().meat_end == 1:
		velocity = (get_parent().meat_target - position).normalized() * speed
		if (get_parent().meat_target - position).length() > 5:
			velocity = move_and_slide(velocity)
