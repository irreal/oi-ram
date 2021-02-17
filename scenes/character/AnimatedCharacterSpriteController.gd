extends Node

var animatedSprite: AnimatedSprite
var vSpeed = 0;

func _ready():
	animatedSprite = get_owner();


func on_vSpeed_change(vSpeed_new):
	vSpeed = vSpeed_new;
	
func _process(_delta):
	if abs(vSpeed) > 0:
		animatedSprite.animation = 'run'
	else:
		animatedSprite.animation = 'default'
	if vSpeed < 0:
		animatedSprite.flip_h = true
		animatedSprite.speed_scale = abs(vSpeed/10)
	else:
		animatedSprite.flip_h = false
		animatedSprite.speed_scale = abs(vSpeed/10)
