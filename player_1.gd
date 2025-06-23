extends CharacterBody2D
class_name Player_1

const SPEED = 300.0
const JUMP_VELOCITY = -250.0
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var audio_stream_player_2d = $AudioStreamPlayer2D

var jump_max = 3
var jump_count = 0
var prevVelocity: Vector2 = Vector2.ZERO
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	GameManger.player_1 = self

func _physics_process(delta):
	#Animation
	if (velocity.x > 1 || velocity.x < -1):
		animated_sprite_2d.animation = "run"
	else:
		animated_sprite_2d.animation = "Idle"
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta
		animated_sprite_2d.animation = "jump" 
	if (velocity.y > 1):
		animated_sprite_2d.animation = "fall"

	# Handle Jump.
	if is_on_floor() and jump_count != 0:
		jump_count = 0
		
	if not is_on_floor(): 
		velocity.x = lerp(prevVelocity.x, velocity.x, 0.1)
		
	if Input.is_action_just_pressed("jump") and jump_count < jump_max:
		velocity.y = JUMP_VELOCITY
		jump_count += 1
		audio_stream_player_2d.play()
	if Input.is_action_just_pressed("left"):
		animated_sprite_2d.flip_h = true
	if Input.is_action_just_pressed("right"):
		animated_sprite_2d.flip_h = false


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, 50)

	move_and_slide()

	prevVelocity = velocity
func die():
	GameManger.respawn_player_1()
