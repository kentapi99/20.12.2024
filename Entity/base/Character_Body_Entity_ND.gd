class_name CharacterBodyEntity_ND extends CharacterBody2D

@export var acceleration : float# should come from entity data
@export var move_speed : float # should came from entity stata data
@export var friction : float# should come from map

func _physics_process(delta: float) -> void:
	move_and_slide()
