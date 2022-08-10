extends TextureButton

class_name ActionCard

var step	# 1,2
var dir		# -1/1
var color	# 1 red 2 green 3 blue 4 yellow 5 purple 6 any 7 last
var face
var back

func _init(var c, var s, var d):
	color = c
	step = s
	dir = d
	#face = load("res://cards/action-"+str(color)+str(dir)+str(step)+"tres")
	back = load("res://cards/back-gold.tres")
	print(color, step, dir)

	
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

