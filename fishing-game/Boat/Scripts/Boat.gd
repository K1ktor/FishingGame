extends Sprite2D
class_name Boat

@export var camera : Camera2D

var fuel : float = 10.0
var distance : float = 0.0

var moving : bool = false

var wished_position : float

func _ready() -> void:
	wished_position = global_position.x

func _process(delta: float) -> void:
	if wished_position == 0.0:
		return

	global_position.x = lerp(global_position.x, wished_position, delta)

func _physics_process(delta: float) -> void:
	if !moving or fuel <= 0:
		return

	fuel -= 5 * delta
	wished_position += 30 * delta

	Events.ui_update_boat_fuel.emit(fuel, 10.0)
