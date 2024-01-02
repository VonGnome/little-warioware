# Written by Markus
extends Node2D

#onready var tween = $Tween

onready var sprite = $Sprite
onready var tween = get_node("Tween")

export(NodePath) var node_path

onready var node = get_node(node_path)
# Declare member variables here. Examples:
# var a = 2
# var b = "text"

func animate(scaleUp,scaleDown):
	
	
	tween.interpolate_property(node, "scale",
		scaleDown, scaleUp, 1,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
	pass
	
