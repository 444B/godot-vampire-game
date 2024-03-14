extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * 850
	move_and_slide()

	if velocity.length() > 0.0:
		get_node("HappyBoo").play_walk_animation()
	else:
		$HappyBoo.play_idle_animation() # we can also call it like this
		# If we assign a Unique name to the node
		# we can call it with %HappyBoo
		# and not worry about absolute pathing
		
