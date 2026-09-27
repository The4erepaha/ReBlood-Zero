extends CharacterBody2D

@export var speed = 200
@export var jump_force:float = 500
@export var gravity:float = 1000


func _ready() -> void:
	pass

func _physics_process(delta: float) -> void:
	player_control(delta)
	move_and_slide()


func player_control(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	#var direction_x = Input.get_axis("move_left", "move_right")
	var direction = 0 #горизонтальное движение
	if Input.is_action_pressed("move_left"):
		direction -= 1
		$Sprite2D.flip_h = true
	if Input.is_action_pressed("move_right"):
		direction += 1
		$Sprite2D.flip_h = false
	velocity.x = direction * speed
	
	#условие прыжка
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y -= jump_force
	
	#условие действия
	if Input.is_action_pressed("action"):
		pass
