extends KinematicBody2D

signal turn

const MOVE_DISTANCE = 64

func _ready():
	pass

func _process(delta):
	if Input.is_action_just_pressed("ui_right"):
		run_turn("move", [0])
	if Input.is_action_just_pressed("ui_left"):
		run_turn("move", [1])
	if Input.is_action_just_pressed("ui_down"):
		run_turn("move", [2])
	if Input.is_action_just_pressed("ui_up"):
		run_turn("move", [3])

func run_turn(turnType, turnParameters = []):
	emit_signal("turn")
	if turnType == "move":
		if turnParameters[0] == 0:
			position.x += MOVE_DISTANCE
		if turnParameters[0] == 1:
			position.x -= MOVE_DISTANCE
		if turnParameters[0] == 2:
			position.y += MOVE_DISTANCE
		if turnParameters[0] == 3:
			position.y -= MOVE_DISTANCE
