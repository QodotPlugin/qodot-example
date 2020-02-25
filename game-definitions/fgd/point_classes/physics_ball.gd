extends RigidBody

export(Dictionary) var properties

func use():
	bounce()

func bounce():
	linear_velocity.y = 10
