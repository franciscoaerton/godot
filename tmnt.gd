extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 200 # Pixels/second


func _physics_process(_delta):
	var Player = $"../Panel/Vars"
	var motion = Vector2()
	
	
	
	if Input.is_action_pressed("move_up"):
		motion += Vector2(0, -1)
		$AnimationPlayer.play("walkup")
		
	if Input.is_action_pressed("move_bottom"):
		motion += Vector2(0, 1)		
		$AnimationPlayer.play("walk")
		
	if Input.is_action_pressed("move_left"):
		motion += Vector2(-1, 0)
		$Sprite.flip_h = true
		$AnimationPlayer.play("walk")
		
		
	if Input.is_action_pressed("move_right"):
		motion += Vector2(1, 0)
		$Sprite.flip_h = false
		$AnimationPlayer.play("walk")
		
	if Input.is_action_just_pressed("Ataque_A"):
		$AnimationPlayer.play("atack_one")
		
	if Input.is_action_just_pressed("Ataque_B"):
		$AnimationPlayer.play("atack_two")
	
	
	motion = motion.normalized() * MOTION_SPEED
	Player.text = " Motion: " + String(motion)
	

	move_and_slide(motion)
