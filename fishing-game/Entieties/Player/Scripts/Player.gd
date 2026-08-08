extends Node2D
class_name Player

var moving : bool = false

var speed : float = 10.0

var fuel : float = 100.0
var fuel_usage : float = 10.0

var desired_position : Vector2
var lerp_speed : float = 1.0

func _ready() -> void:
	desired_position = global_position

func _process(delta: float) -> void:
	global_position.x = lerp(global_position.x, desired_position.x, delta * lerp_speed)

func _physics_process(delta: float) -> void:
	if moving:
		desired_position.x += speed * delta
		fuel -= fuel_usage * delta

func _on_move_button_toggled(toggled_on: bool) -> void:
	moving = toggled_on
