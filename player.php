extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 250 # Pixels/second


func _physics_process(_delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("move_up"):
		motion += Vector2(0, -1)
	if Input.is_action_pressed("move_bottom"):
		motion += Vector2(0, 1)
	if Input.is_action_pressed("move_left"):
		motion += Vector2(-1, 0)
		$Sprite.flip_h = true
	if Input.is_action_pressed("move_right"):
		motion += Vector2(1, 0)
		$Sprite.flip_h = false
	
	motion = motion.normalized() * MOTION_SPEED

	move_and_slide(motion)
