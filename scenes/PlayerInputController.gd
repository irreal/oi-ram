extends Node

signal moveCommand


func _process(_delta):
	if Input.is_action_just_pressed("ui_left"):
		emit_signal("moveCommand","left",true);
	elif Input.is_action_just_released("ui_left"):
		emit_signal("moveCommand","left",false);

	if Input.is_action_just_pressed("ui_right"):
		emit_signal("moveCommand","right",true);
	elif Input.is_action_just_released("ui_right"):
		emit_signal("moveCommand","right",false);
