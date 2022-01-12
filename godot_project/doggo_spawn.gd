extends Node2D

var stop = 1
var meat_end = 0

var human_target

func _physics_process(delta):
	
	if stop == 0:
		
		pass
	
	pass # Replace with function body.



func _on_start_moving_body_entered(body):
	if body.meat == 0:
		stop = 0
	else:
		meat_end = 1
	pass # Replace with function body.
