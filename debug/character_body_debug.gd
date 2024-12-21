class_name DebugPlayer_ND extends Control
@export var state_lbl : Label
@export var move_dir_lbl : Label
@export var SM : StateMachine_ND
@export var input_nd : InputComponent_ND


func _process(delta: float) -> void:
	state_lbl.text = " state : " + str( EnMgr.act_state.find_key( SM.current_state.act_state_id ) )
	move_dir_lbl.text = "move_dir : " + str( input_nd.move_dir  ) 
