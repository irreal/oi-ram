extends AnimatedSprite


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vSpeed = 0;


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimatedCharacterMovementController.connect("vSpeedChange", $AnimatedSpriteController, "on_vSpeed_change");
	$AnimatedCharacterMovementController.connect("vSpeedChange", self, "vSpeedChange");
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func vSpeedChange(vSpeed_new):
	vSpeed = vSpeed_new;
	
func _process(delta):
	position.x += vSpeed;
	pass
