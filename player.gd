extends CharacterBody2D

const goal_rot = 90.0
const SPEED = 300.0
const JUMP_VELOCITY = -400.0
const FRICTION = 30.0
func _init() -> void:
	rotation = goal_rot

func _process(delta: float) -> void:
	goal_rot
func _physics_process(_delta: float) -> void:
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var x_direction := Input.get_axis("player_left", "player_right")
	if x_direction:
		velocity.x = move_toward(velocity.x,x_direction * SPEED,FRICTION)
	else:
		velocity.x = move_toward(velocity.x, 0, FRICTION)
	var y_direction := Input.get_axis("player_up", "player_down")
	if y_direction:
		velocity.y = move_toward(velocity.y,y_direction * SPEED,FRICTION)
	else:
		velocity.y = move_toward(velocity.y, 0, FRICTION)

	move_and_slide()
