extends RigidBody
tool

export(Dictionary) var properties setget set_properties

func set_properties(new_properties : Dictionary) -> void:
	if(properties != new_properties):
		properties = new_properties
		update_properties()

func update_properties():
	print(properties)
	if 'velocity' in properties:
		linear_velocity = properties['velocity']

func use():
	bounce()

func bounce():
	linear_velocity.y = 10
