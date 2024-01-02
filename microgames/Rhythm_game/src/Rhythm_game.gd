#Written by Markus
extends Microgame

#onready var target = $Target

var isIntarget = false

enum States {
		easy = 2, 
		medium = 1, 
		hard = 0
}
enum TurretState {
	Scanning,
	Firing,
	Recharging
}

var currentState : int = States.easy
var tweenEnd
# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	var targets = $StateMachine.get_children()
	if is_difficulty_medium():
		currentState = States.medium
		pass
	if is_difficulty_hard():
		currentState = States.hard
		tweenEnd = targets[-1].get_scale()
		pass
	print(currentState, "current State")
	for n in range(currentState):
		
		
		$StateMachine.remove_child(targets[(2-n)])
		
		print(targets, "targets")
		if not is_difficulty_hard():
			tweenEnd = targets[(1-n)].get_scale()
			pass
		print(n)
		pass
	
	pass # Replace with function body.


func _physics_process(delta):
	
		if($Beater.scale == Vector2(1,1)):
			$Beater.animate(tweenEnd,Vector2(1,1))
		elif($Beater.scale == tweenEnd):
			$Beater.animate(Vector2(1,1),tweenEnd)
			pass

func _input(event):
	if event.is_action_pressed("mg_action") and isIntarget == true:
		is_success = true
		pass

func _on_Area2D_area_entered(area):
	isIntarget = true
	pass # Replace with function body.


func _on_Area2D_area_exited(area):
	isIntarget = false
	pass # Replace with function body.
