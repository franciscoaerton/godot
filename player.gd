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

	var Hud = $"../Panel/Vars"
	
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

func matriz_dano_gdp(st)
	match st:
		[ 1 , 2 ]:
			return [1,-6]
		[ 3 , 4 ]:
			return [1,-5]
		[ 5 , 6 ]:
			return [1,-4]
		[ 7 , 8 ]:
			return [1,-3]
		[ 9 , 10 ]:
			return [1,-2]
	
func matrIz_dano_bal(st)
	match st:
		[ 1 , 2 ]:
			return [1,-5]
		[ 3 , 4 ]:
			return [1,-4]
		[ 5 , 6 ]:
			return [1,-3]
		[ 7 , 8 ]:
			return [1,-2]
		[ 9 ]:
			return [1,-1]
		[ 10 ]:
			return [1,0]
		[ 11 ]:
			return [1,1]
		[ 12 ]:
			return [1,2]
		
func update_hud (hud, string_var)
	hud.text = "Debug: " + string_var
	
	
