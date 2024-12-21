class_name BaseState_ND extends Node

signal Change_State_Signal( _current_state_id : EnMgr.act_state , _new_state_id : EnMgr.act_state )

@export var Entity_node : CharacterBodyEntity_ND


var act_state_id : EnMgr.act_state

func _ready() -> void:
	_set_state_enum()

func _set_state_enum():
	print("+++++++++++++++++++++++++++++++++++++++++++++++++++")
	print("set this stat id ")
	print("+++++++++++++++++++++++++++++++++++++++++++++++++++")
	get_tree().quit()
	pass
func _Enter_state():
	pass
func _Exit_state():
	pass
func _Update_state( _delta : float ):
	pass
func _Physics_state_Update( _delta : float ):
	pass
