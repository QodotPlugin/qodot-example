extends Spatial

var yaw = 0.0
var pitch = 0.0

func _ready() -> void:
	yaw = transform.basis.get_euler().y
	pitch = transform.basis.get_euler().x

func _process(delta):
	rotation = Vector3.ZERO
	rotate(Vector3.RIGHT, pitch)
	rotate(Vector3.UP, yaw)

func _input(event) -> void:
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_WHEEL_UP:
			$Camera.translation.z -= 2.0
		elif event.button_index == BUTTON_WHEEL_DOWN:
			$Camera.translation.z += 2.0
	elif event is InputEventMouseMotion:
		if Input.is_mouse_button_pressed(BUTTON_MASK_LEFT):
			translation += $Camera.global_transform.basis.x * event.relative.x * -0.05
			translation += $Camera.global_transform.basis.y * event.relative.y * 0.05
		elif Input.is_mouse_button_pressed(BUTTON_MASK_RIGHT):
			yaw += event.relative.x * -0.002
			pitch += event.relative.y * -0.002
