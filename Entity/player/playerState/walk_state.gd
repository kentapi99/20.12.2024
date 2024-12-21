class_name PlayerWalkState_ND extends BaseState_ND
@export var input_ND : InputComponent_ND
@export var anim_tree : AnimationTree

func _set_state_enum():
	act_state_id = EnMgr.act_state.walk
	pass
	#
func _Enter_state():
	anim_tree.get("parameters/playback").travel("walk")
	

func _Physics_state_Update( _delta : float ):
	anim_tree.set("parameters/walk/BlendSpace2D/blend_position", input_ND.facing_dir)
	Entity_node.velocity = Entity_node.velocity.move_toward(input_ND.move_dir * Entity_node.move_speed , Entity_node.acceleration)
	if input_ND.move_dir == Vector2.ZERO:
		Change_State_Signal.emit( act_state_id, EnMgr.act_state.idle)
