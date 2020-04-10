extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#export var speed = 1
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
#func _ready():
#	print("Hello world")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _physics_process(delta):
	velocity = Vector2.ZERO
	
	velocity.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	
	move_and_collide(velocity.normalized())
