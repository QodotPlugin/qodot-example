extends RigidBody

export(Dictionary) var properties

func bounce():
	linear_velocity.y = 10
