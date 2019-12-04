extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 200 # Pixels/second
var pj_st = 10
var pj_dx = 10
var pj_iq = 10 
var pj_ht = 10


var pj_dano_bal = [1,-1]
var pj_dano_gdp = [1,0]



func _physics_process(_delta):
	var Player = $Sprite2/Panel/Vars
	var Dano = $Sprite2/Panel/Direction
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
		pj_st = pj_st + 1
		
	if Input.is_action_just_pressed("Ataque_B"):
		$AnimationPlayer.play("atack_two")
		pj_st = pj_st - 1
	
	
	motion = motion.normalized() * MOTION_SPEED
	Player.text = " Motion: " + String (pj_st)
	var dano = matriz_dano_gdp(pj_st)
	print(dano) 
	Dano.text = 'Custo DX' + String(cost_dx_and_iq(pj_st))
		

	move_and_slide(motion)
	
func cost_dx_and_iq(x):
	var diferenca_x = x - 10
	return 20 * diferenca_x

func matriz_dano_gdp(st):
	match st:
		7:
			return [1,-6]
		8:
			return [1,-5]
		9:
			return [1,-4]
		10:
			return [1,-3]
		11:
			return [1,-2]
		_:
			return 8
