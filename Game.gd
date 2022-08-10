extends Control

var deck = Array()
var cards_played = 0
var total_cards = 20
var current_card

# Called when the node enters the scene tree for the first time.
func _ready():
	var i = 0;
	var color
	var step
	var dir
	while (i < total_cards):
		color = 1 + randi() % 7
		step = 1 + randi() % 2
		if (randi() % 2 == 0):
			dir = 1
		else:
			dir = -1

		deck.append(ActionCard.new(color, step, dir))
		i += 1
		
	deck.shuffle()



func _init():
	pass



func _on_MainDeck_pressed():
	if (cards_played < total_cards):
		current_card = deck.pop_back()
		print(current_card.color, current_card.step, current_card.dir)
		
		cards_played += 1
