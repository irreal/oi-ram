extends Node


var vSpeed = 0;
var vSpeed_previous = 0;
var vDesiredMovement = 0;
var movementMultiplier = 30;
var maxHorizontalSpeed = 25;
signal vSpeedChange 

var movingLeft = false;
var movingRight = false;

func on_moveCommand(command, state):
	if command == "left":
		movingLeft = state;
	if command == "right":
		movingRight = state;

func _process(delta):
	vDesiredMovement = 0;
	if movingLeft:
		vDesiredMovement = -1;
	if movingRight:
		vDesiredMovement = 1;
	
	if vDesiredMovement == 0:
		vSpeed = 0;
	elif vDesiredMovement > 0 && vSpeed < 0:
		vSpeed *= -0.8;
	elif vDesiredMovement < 0 && vSpeed > 0:
		vSpeed *= -0.8;
	vSpeed += vDesiredMovement * movementMultiplier * delta
	if (vSpeed < -maxHorizontalSpeed):
		vSpeed = -maxHorizontalSpeed;
	elif(vSpeed > maxHorizontalSpeed):
		vSpeed = maxHorizontalSpeed;
	if vSpeed != vSpeed_previous:
		emit_signal("vSpeedChange", vSpeed);
		vSpeed_previous = vSpeed;
