extends Node2D

var hSpeed = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if abs(hSpeed) > 0:
		$AnimatedSprite.animation = 'run'
	if hSpeed < 0:
		$AnimatedSprite.flip_h = true
	else:
		$AnimatedSprite.flip_h = false
		


func _on_RigidBody2D_body_entered(body):
	pass # Replace with function body.
