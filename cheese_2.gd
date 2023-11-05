extends RigidBody3D

const DAMAGE = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	top_level = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	#apply_impulse(transform.basis.z, -transform.basis.z)
	pass

func _on_area_3d_body_entered(body):
	if body.is_in_group("enemy"):
		body.fall_over()
		queue_free()
