extends KinematicBody2D

# This is a demo showing how KinematicBody2D
# move_and_slide works.

# Member variables
const MOTION_SPEED = 250 # Pixels/second

var pj_st = 10
var pj_dx = 10
var pj_iq = 10 
var pj_ht = 10


var pj_dano_bal = 
var pj_dano_gdp =



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

func cost_dx_and_iq(x)
	var diferenca_x = x - 10
	return 20 * diferenca_x

func cost_st_and_ht(x)
	var diferenca_x = x - 10
	return 10 * diferenca_x
	
func dano
	return 

func matriz_dano_bal(st)
	return 20*x
	
func matirz_dano_gpp(st)
	match st:
		1:
			return 
		
	
	
