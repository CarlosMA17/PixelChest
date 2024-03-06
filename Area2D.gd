extends Area2D

@onready var anim := $AnimationPlayer

func _on_body_entered(body):
	anim.play("chestOpen")
	Global.money += 1


func _on_animation_player_animation_finished(anim_name):
	queue_free()
