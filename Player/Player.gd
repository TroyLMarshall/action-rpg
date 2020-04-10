extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed = 100
export var friction = 10
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
#func _ready():
#	print("Hello world")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _physics_process(delta):
	var target_vector = Vector2.ZERO
	
	target_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	target_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	target_vector = target_vector.normalized()
	
	velocity = velocity.move_toward(target_vector, friction * delta)
	
	move_and_collide(velocity)
