extends ProgressBar

func _ready() -> void:
	Events.ui_update_boat_fuel.connect(update_fuel)

func update_fuel(fuel, max_fuel):
	max_value = max_fuel
	value = fuel
