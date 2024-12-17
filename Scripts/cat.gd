extends CharacterBody2D


const SPEED = 600.0
const JUMP_VELOCITY = -600.0
var max_jump = 2
var jump_count = 0
const friction = 70
const wall_jump_pushback = 100
var double_jump

func _ready():
	double_jump = false
	
func _physics_process(delta: float) -> void:
	if double_jump:
		if get_child(2).time_left == 0:
			print("done")
			double_jump = false
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	
	if is_on_floor():
		jump_count=0
	if is_on_wall():
		jump_count=0
		
	# Handle jump.
	jump()
	
	# Get the input direction and handle the movement/deceleration.
	walk()
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	move_and_slide()
	
func jump():
	if double_jump == true:
		if Input.is_action_just_pressed("Jump") and jump_count < max_jump:
			velocity.y += JUMP_VELOCITY
			jump_count+=1
	if double_jump == false :
		if Input.is_action_just_pressed("Jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
	
func double_jump_power():
	double_jump = true
	add_child(Timer.new())
	get_child(2).one_shot = true
	get_child(2).start(30)

func walk():
	var direction := Input.get_axis("Left", "Right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	if velocity.x < 0 :
		$AnimatedSprite2D.flip_h = false
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = true
	
	if velocity.x != 0:
		$AnimatedSprite2D.play("cat_walk")
	else:
		$AnimatedSprite2D.play("cat_idle")
	
func killPlayer():
	position = %respawn.position
	$AnimatedSprite2D.flip_h = true
func killPlayerS2():
	position = %RespawnS2.position
	$AnimatedSprite2D.flip_h = true

func _on_death_area_body_entered(body: Node2D) -> void:
	killPlayer()

func _on_death_area_2_body_entered(body: Node2D) -> void:
	killPlayerS2()


func _on_next_level_area_entered(area: Area2D) -> void:
	get_tree().change_scene_to_file("res://Scenes/second_level.tscn")
	
func go_back_L_1():
	position = %Welcome_back_L_1.position
func go_bac_L_2():
	position = %Welcome_back_L_2.position
	