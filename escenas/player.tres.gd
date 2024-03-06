extends CharacterBody2D
class_name Player

const PPM = 32
const spriteSL = 4
var speed = 50.0
var direction = Vector2()
@onready var anim := $AnimationPlayer
@onready var sprite := $Sprite2D

	
func _input(event):
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down")
	direction = direction.normalized()
	


func _physics_process(delta):
	velocity = direction * speed
	
	if direction == Vector2.ZERO:
		anim.play("playerIdle")
	else:
		anim.play("playerRun")
		sprite.flip_h = direction.x < 0 
	move_and_slide()
	
func update_rotation():
	Sprite2D.flip_h = velocity.x < 0
	
