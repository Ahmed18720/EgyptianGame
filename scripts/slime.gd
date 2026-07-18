extends CharacterBody2D

const SPEED = 0.000005

var direction = 1

@onready var ray_cast_left: RayCast2D = $"RayCast left"
@onready var ray_cast_right: RayCast2D = $"RayCast right"
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):

	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite.flip_h = true

	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite.flip_h = false

	if !is_on_floor():
		velocity += get_gravity() * delta

	velocity.x = direction * SPEED

	move_and_slide()
