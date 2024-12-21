class_name InputComponent_ND extends Node
@export var State_Machine : StateMachine_ND

var move_dir : Vector2
var facing_dir : Vector2
#
func _physics_process(delta: float) -> void:
	_input_handle()

func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("R_mouse"):
		State_Machine.change_state_to_new_state( State_Machine.current_state.act_state_id , EnMgr.act_state.atk)
	if event.is_action_released("R_mouse"):
		State_Machine.change_state_to_new_state( State_Machine.current_state.act_state_id , EnMgr.act_state.idle)
		pass

func _input_handle():# CAUTION : mob need auto input , so need the other func
	#if have mob auto move then make if statement here
	_manual_input()
#
func _manual_input():
	move_dir = Input.get_vector( "Key_A",  "Key_D" ,"Key_W", "Key_S")
	if move_dir != Vector2.ZERO:
		facing_dir = move_dir
