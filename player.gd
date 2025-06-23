extends CharacterBody2D
class_name Player
const SPEED = 300.0
const JUMP_VELOCITY = -250.0
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

@onready var animated_sprite_2d = $AnimatedSprite2D
var jump_max = 2
var jump_count = 0
var prevVelocity: Vector2 = Vector2.ZERO #ADD TO LEVEL 2 PLAYER
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _ready():
	GameManger.player = self
func _physics_process(delta):
	#Animation
	if position.y >= 900:
		die()
	if (velocity.x > 1 || velocity.x < -1):
		animated_sprite_2d.animation = "run"
	else:
		animated_sprite_2d.animation = "Idle"
	# Add the gravity.
	if not is_on_floor(): #ADD TO LEVEL 2 PLAYER
		velocity.x = lerp(prevVelocity.x, velocity.x, 0.1)
	if not is_on_floor():
		velocity.y += gravity * delta
		animated_sprite_2d.animation = "jump" 

	# Handle Jump.
	
	if is_on_floor() and jump_count != 0:
		jump_count = 0
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 50)
	if (velocity.y > 1):
		animated_sprite_2d.animation = "fall"

	if Input.is_action_just_pressed("jump") and jump_count < jump_max:
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		audio_stream_player_2d.play()
	
	move_and_slide()

	
	
	var isLeft = velocity.x < 0
	animated_sprite_2d.flip_h = isLeft
	
	
	prevVelocity = velocity #ADD TO LEVEL 2 PLAYER

func die():
	GameManger.respawn_player()

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	
