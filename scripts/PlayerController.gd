extends CharacterBody3D


const SPEED = 500.0
const JUMP_VELOCITY = 4.5
#Camera3D camera

func _init() -> void:
	#camera = get_node('Camera3D')
	pass

func _process(delta: float) -> void:
	
	#TODO implement camera rotation
	
	#print("hallo")
	
	pass

func _physics_process(delta: float) -> void:
	var inputVector = Vector3.ZERO
	
	if Input.is_action_pressed("player_forward"):
		inputVector -= global_transform.basis.z
	if Input.is_action_pressed("player_backward"):
		inputVector += global_transform.basis.z
	if Input.is_action_pressed("player_left"):
		inputVector -= global_transform.basis.x
	if Input.is_action_pressed("player_right"):
		inputVector += global_transform.basis.x
	
	var dir = inputVector.normalized()
	
	velocity = delta * dir * SPEED
	
	move_and_slide()
	#pass

#func _physics_process(delta: float) -> void:
	## Add the gravity.
	#if not is_on_floor():
		#velocity += get_gravity() * delta
#
	## Handle jump.
	#if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		#velocity.y = JUMP_VELOCITY
#
	## Get the input direction and handle the movement/deceleration.
	## As good practice, you should replace UI actions with custom gameplay actions.
	#var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	#var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	#if direction:
		#print(direction)
		#velocity.x = direction.x * SPEED
		#velocity.z = direction.z * SPEED
	#else:
		#velocity.x = move_toward(velocity.x, 0, SPEED)
		#velocity.z = move_toward(velocity.z, 0, SPEED)
#
	#move_and_slide()
