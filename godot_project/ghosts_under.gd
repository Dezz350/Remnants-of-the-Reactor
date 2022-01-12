extends StaticBody2D
var check = 1

func _on_vision_triger_body_entered(body):
	if check == 1:
		
		check = 0
		
		get_node("human1_1").visible = 1
		get_node("human1_2").visible = 1
		get_node("human2_1").visible = 1
		get_node("human2_2").visible = 1
		get_node("human2_3").visible = 1
		get_node("human3_1").visible = 1
		get_node("human3_2").visible = 1
		
		yield(get_tree().create_timer(2),"timeout")
		get_node("human1_1").visible = 0
		get_node("terror1_1").visible = 1
		get_node("human1_2").visible = 0
		get_node("terror1_2").visible = 1
		
		yield(get_tree().create_timer(0.5),"timeout")
		get_node("human2_1").visible = 0
		get_node("terror2_1").visible = 1
		get_node("human2_2").visible = 0
		get_node("terror2_2").visible = 1
		get_node("human2_3").visible = 0
		get_node("terror2_3").visible = 1
		get_node("terror1_1").queue_free()
		get_node("terror1_2").queue_free()
		
		yield(get_tree().create_timer(0.5),"timeout")
		get_node("human3_1").visible = 0
		get_node("terror3_1").visible = 1
		get_node("human3_2").visible = 0
		get_node("terror3_2").visible = 1
		get_node("terror2_1").queue_free()
		get_node("terror2_2").queue_free()
		get_node("terror2_3").queue_free()
		
		yield(get_tree().create_timer(0.5),"timeout")
		queue_free()
	pass # Replace with function body.
