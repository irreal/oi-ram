extends Node2D


func _ready():
	$PlayerInputController.connect("moveCommand",$AnimatedCharacter/AnimatedCharacterMovementController,"on_moveCommand");




