extends KinematicBody2D

var kitchen = 0

var shear = 0
var key = 0
var meat = 0

func _physics_process(delta):
	$Sprite.rotation = get_local_mouse_position().angle()
	
	var move: Vector2
	if Input.is_key_pressed(KEY_D):
		move.x += 1
	if Input.is_key_pressed(KEY_A):
		move.x -= 1
	if Input.is_key_pressed(KEY_S):
		move.y += 1
	if Input.is_key_pressed(KEY_W):
		move.y -= 1
	
	move_and_slide(move.normalized() * 300)
#	move_and_slide(move.rotated(get_local_mouse_position().angle() + PI/2) * 300)
	
	if $Sprite/RayCast2D.is_colliding():
		var collided = $Sprite/RayCast2D.get_collider()
		if collided.is_in_group("enemies"):
			collided.damage()
