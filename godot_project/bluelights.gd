extends Node2D


func _on_Area2D_body_entered(body):
	get_node("kitchen/kitchen_light").visible = 0
	get_node("bedroom/bedroom_light").visible = 1
	body.kitchen = 1
	pass # Replace with function body.


func _on_bedroom_area_body_entered(body):
	if body.kitchen == 1:
		get_node("bedroom/bedroom_light").visible = 0
		get_node("stairs_light").visible = 1
	pass # Replace with function body.
