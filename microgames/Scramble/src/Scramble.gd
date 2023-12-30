extends Microgame

var letter = preload("res://microgames/Scramble/LetterSpace.tscn")

var letterInstance

onready var Scramble = $"."

# too be replaced with a word, randomly chosen from a JSON file
var word = "fart"
var letterPlacer = 165


# THIS IS LIKE EVERYTHING! ITS THE RESULTS, SPAWN CONTROLLER AND JSON RECEIVER
export var wordArray = []

# Called when the node enters the scene tree for the first time.
func _ready():
	for c in word:
		wordArray.append(c)
		print(wordArray)
		spawnLetter(letterPlacer,200,wordArray[1])
		letterPlacer += 110
		
	pass # Replace with function body.


### instantiates Letter children and places them in the right positions, gotten in the for loop
func spawnLetter(posX,posY,letterSign):
	letterInstance = letter.instance()
	letterInstance.rect_position = Vector2(posX,posY)
	letterInstance.labelNode.Text = letterSign
	add_child_below_node(Scramble,letterInstance)
	
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
