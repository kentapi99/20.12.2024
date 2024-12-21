class_name StateMachine_ND extends Node

@export var initial_state : BaseState_ND

var current_state : BaseState_ND 
var state_dict : Dictionary = {}

func _ready() -> void:
	for st in get_children():
		if st is BaseState_ND:
			var state : BaseState_ND = st
			state_dict[ state.act_state_id ] = st
			state.Change_State_Signal.connect( change_state_to_new_state )
	
	if initial_state != null:
		initial_state._Enter_state()
		current_state = initial_state
		
func _process(delta: float) -> void:
	if current_state != null:
		current_state._Update_state( delta)
	
func _physics_process(delta: float) -> void:
	if current_state != null:
		current_state._Physics_state_Update( delta )

func change_state_to_new_state( _current_state_id : EnMgr.act_state , _new_state_id : EnMgr.act_state ):
	if _current_state_id != current_state.act_state_id : return# INFO if _current state not this current state, then return
	
	var new_state : BaseState_ND = state_dict.get( _new_state_id )
	if !new_state : return
	if current_state != null : current_state._Exit_state()
	
	new_state._Enter_state()
	
	current_state = new_state
