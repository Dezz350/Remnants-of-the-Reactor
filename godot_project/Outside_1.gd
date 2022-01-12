extends Node2D

var doggo_check = 1
var stop_doggo = 1
var meat_end = 0

var start_ending = 0
var check_end = 1

var human_target
var meat_target 

func _ready():
	meat_target = get_node("meat_spawn").position

func _on_enter_building_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_building").transform
	get_node("CanvasModulate").color = "000000"
	#the original canvas color is 19283f
	pass # Replace with function body.


func _on_exit_building1_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_outside").transform
	get_node("CanvasModulate").color = "19283f"
	pass # Replace with function body.


func _on_enter_upstairs_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_upstairs").transform
	pass # Replace with function body.


func _on_enter_downstairs_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_downstairs").transform
	pass # Replace with function body.


func _on_enter_underground_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_down").transform
	pass # Replace with function body.


func _on_leave_underground_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_up").transform
	pass # Replace with function body.
	
	
func _on_enter_backyard_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_backyard").transform
	get_node("CanvasModulate").color = "19283f"
	if body.meat == 0:
		stop_doggo = 0
	else:
		get_node("meat_spawn/meat_sprite").visible = 1
		get_node("meat_spawn/AnimationPlayer").play("meat_yeet")
		get_node("dog1/AnimationPlayer").play("move2")
		get_node("dog2/AnimationPlayer").play("move2")
		meat_end = 1
	pass # Replace with function body.


func _on_enter_inside_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_inside").transform
	get_node("CanvasModulate").color = "000000"
	stop_doggo = 1
	pass # Replace with function body.
	
func _on_doggo1_area_body_entered(body):
	if doggo_check == 1:
		doggo_check = 0
		get_node("CanvasModulate/AnimationPlayer").play("bad_end")
		yield(get_tree().create_timer(3),"timeout")
		get_tree().quit()
	pass # Replace with function body.
	
func _on_doggo2_area_body_entered(body):
	if doggo_check == 1:
		doggo_check = 0
		get_node("CanvasModulate/AnimationPlayer").play("bad_end")
		yield(get_tree().create_timer(3),"timeout")
		get_tree().quit()
	pass # Replace with function body.
	
func _on_enter_lastroom_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_lastroom").transform
	get_node("CanvasModulate").color = "000000"
	pass # Replace with function body.
	
func _on_enter_before_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_before").transform
	get_node("CanvasModulate").color = "19283f"
	pass # Replace with function body.
	
func _on_epilog_body_entered(body):
	get_node("Gracz").transform = get_node("spawn_epilog").transform
	get_node("CanvasModulate").color = "c17222"
	pass # Replace with function body.
	
func _on_the_end_body_entered(body):
	if check_end == 1:
		check_end = 0
		start_ending = 1
		get_node("CanvasModulate/AnimationPlayer").play("good_end")
		yield(get_tree().create_timer(3),"timeout")
		get_tree().quit()
	pass # Replace with function body.

func _physics_process(delta):
	
	human_target = get_node("Gracz").position
	
	pass # Replace with function body.








