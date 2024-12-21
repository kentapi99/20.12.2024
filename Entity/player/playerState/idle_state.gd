class_name PlayerIdleState_ND extends BaseState_ND
@export var input_ND : InputComponent_ND
@export var anim_tree : AnimationTree
func _set_state_enum():
	act_state_id = EnMgr.act_state.idle

func _Enter_state():
	anim_tree.set("parameters/idle/blend_position", input_ND.facing_dir)
	anim_tree.get("parameters/playback").travel("idle")
	

func _Physics_state_Update( _delta : float ):
	Entity_node.velocity = Entity_node.velocity.move_toward( Vector2.ZERO , Entity_node.friction)
	if input_ND.move_dir != Vector2.ZERO:
		Change_State_Signal.emit( act_state_id , EnMgr.act_state.walk )
