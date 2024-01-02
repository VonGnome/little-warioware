# Written by Markus
extends Microgame
#Letter vars
var letter = preload("res://microgames/Scramble/LetterSpace.tscn")
var letterInstance


#vars for text file manipulation
var textLength

#node vars
onready var crossHair = $Crosshair
onready var Scramble = $"."

# too be replaced with a word, randomly chosen from a JSON file
var word = "fart"
var letterPlacer = 125

#word spawner vars
var counter = 0 ## due to the way we are doing for loops this is necessary
var rng = RandomNumberGenerator.new()


#arrays
var wordPlacement = []
var letterPlacement = []
export var wordArray = []
var letters = []
var letterchecker = []
var wordsInRange = []

##Crosshair vars
var crossHairPos
var selectState = false
var selectStatePos = 90
var takenLetter
var takenLetterOldPos
var takenLetterOldArrayPos



# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	
	match get_current_difficulty_level():
		GameState.Difficulty.EASY:
			print("yeeee")
			textLength = 4
		GameState.Difficulty.MEDIUM:
			textLength = 5
		GameState.Difficulty.HARD:
			textLength = 6
		
	var textfile = loadFile()
	
	for c in textfile:
		var rngWordPicker = rng.randi_range(0,textfile.size()-1)
		word = textfile[rngWordPicker]
	
		if word.length() == textLength:
			word = textfile[rngWordPicker]
			break
		
		pass
	
	
	#else:	
		#print(word.length(), "textLenght") 
		#rngWordPicker = rng.randi_range(0,textfile.size())
		
	
	#print(textFile)
	for c in word: # for later ref, c is a string? not an int
		
		wordArray.append(c)
		if wordArray:
			spawnLetter(letterPlacer,200,wordArray[counter])
		
		
		letters.append(letterInstance)
		letterPlacer += 110
		
		print(wordArray[counter])
		counter = counter + 1
	
	
	
	var rndnumpicker = rng.randi_range(0,(letters.size()-1))
	var rndnumrange = rng.randi_range(-1,1)
	
	# check for 0s (non valid), and edge cases to ensure a valid change, do this here to have one variable going into the swap()
	if rndnumrange == 0: rndnumrange = rng.randi_range(-1,1)
	if rndnumrange == -1 and rndnumpicker == 0: rndnumrange = 1 
	if rndnumrange == 1 and rndnumpicker == (letters.size()-1): rndnumrange = -1
	print(letters.size()-1, "last item")
	print(rndnumpicker, "picker", rndnumrange, "range")
	var swappedLetter = rndnumpicker + rndnumrange
	
	
	# swaps two letters around within a range set above
	swap(rndnumpicker,swappedLetter,letters,wordPlacement)
	## ensures we run it after the array has been filled
	if wordArray.empty() == false:
		crossHair.position = wordPlacement[0]
		crossHairPos = 0
		pass
	pass # Replace with function body.


func loadFile():
	var textFile = File.new()
	textFile.open("res://microgames/Scramble/src/Words.txt",1)
	var content = textFile.get_as_text(true)
	var contentArray = str(content).split(",", false)
	return contentArray
	textFile.close()
	
func swap(ind : int, jind : int, array : Array,placement : Array) -> Array:
	var t = array[ind]
	var ti = ind
	array[ind].rect_position = placement[jind]
	array[ind] = array[jind]
	array[jind].rect_position = placement[ti]
	array[jind] = t
	return array

### instantiates Letter children and places them in the right positions, called in the for loop
func spawnLetter(posX,posY,letterSign):
	letterInstance = letter.instance()
	letterInstance.rect_position = Vector2(posX,posY)
	add_child_below_node(Scramble,letterInstance)
	letterInstance.labelNode.text = letterSign
	wordPlacement.append(letterInstance.rect_position)
	letterPlacement.append(letterInstance.labelNode.text)
	print(letterSign,  "lettersign")
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	
	pass
	
func _input(event) -> void:	
	## doing a switch statement is overkill, we have 2 states, on or off
	if selectState == false:
			if event.is_action_pressed("mg_left"):
				if crossHair.position == wordPlacement[0]:
				##could do some fun animation here but oh well
					pass
				else:
					crossHair.position = wordPlacement[crossHairPos-1]
					crossHairPos -= 1
				pass
				print(crossHairPos, "crosshairpos")
			pass
		
			if event.is_action_pressed("mg_right"):
				if crossHair.position == wordPlacement.back():
				##could do some fun animation here but oh well
					pass
				else:
					crossHair.position = wordPlacement[crossHairPos+1]
					crossHairPos += 1
					pass
				print(crossHairPos, "crosshairpos")
			
			if event.is_action_pressed("mg_action") or event.is_action_pressed("mg_up"): 
				takenLetter = letters[crossHairPos] # set taken letter from array of objects
				#takenLetterOldPos = takenLetter.rect_position
				takenLetterOldArrayPos = wordPlacement.find(takenLetter.rect_position) ## finds taken letters pos from array of pos
				crossHair.position = Vector2(crossHair.position.x,selectStatePos) # move selector
				takenLetter.rect_position = crossHair.position #move the taken letter
				selectState = true #takes us out of unselected moving
				print(takenLetterOldArrayPos,"takenArray")
				print(takenLetter, "taken")
				
			pass
			
	
	elif selectState == true:
			if event.is_action_pressed("mg_left"):
				if crossHair.position.x == wordPlacement[0].x:
				##could do some fun animation here but oh well
					pass
				else:
					crossHair.position = Vector2(wordPlacement[crossHairPos-1].x,selectStatePos)
					crossHairPos -= 1
					takenLetter.rect_position = crossHair.position
					
				pass
				print(crossHairPos, "crosshairpos")
			pass
		
			if event.is_action_pressed("mg_right"):
				if crossHair.position.x == wordPlacement.back().x:
				##could do some fun animation here but oh well
					pass
				else:
					crossHair.position = Vector2(wordPlacement[crossHairPos+1].x,selectStatePos)
					crossHairPos += 1
					takenLetter.rect_position = crossHair.position
				pass
				print(crossHairPos, "crosshairpos")
			
			if event.is_action_pressed("mg_action") or event.is_action_pressed("mg_down"): #BUG REPORT: picking up a second letter stil has the issue of picking up the old letter. Too bad
				var movedLetter = letters[crossHairPos] # set letter to be moved to old pos of taken letter
				movedLetter.rect_position = wordPlacement[takenLetterOldArrayPos] # sets moved letter to the position of the old letter via pos array
				takenLetter.rect_position = wordPlacement[crossHairPos] # taken letter to the new, empty pos
				letters[crossHairPos] = takenLetter
				letters[takenLetterOldArrayPos] = movedLetter
				#letters.insert(crossHairPos,takenLetter)
				#letters.insert(takenLetterOldArrayPos,movedLetter)
				crossHair.position = wordPlacement[crossHairPos] #move selector
				selectState = false #take us out of selection
				print(letterchecker, "letterchecker pre")
				#while it is a bit unintuitvie, doing the word check here ensures it happens at the right time, and doesnt check every frame
				var forLoopCounter = 0
				var letterCounter = 0
				for c in letters:
					letterchecker.append(c.labelNode.text)
					
							
					pass
				print(letterchecker, "letterchecker")
				print(wordArray,"wordArray")
				
				if letterchecker == wordArray: is_success = true
				else: letterchecker.clear() 
			pass
	
	pass
