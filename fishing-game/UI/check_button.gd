extends CheckButton

var boat : Boat

func _ready() -> void:
	boat = get_tree().get_first_node_in_group("Boat")

func _on_toggled(toggled_on: bool) -> void:
	boat.moving = toggled_on
