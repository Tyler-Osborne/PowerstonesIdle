extends Control

# Set Variables
export var base_price = 1
export var price_growth_rate = 1.00
export var number_owned = 0

func _ready():
	print(GameManager.SinglePurchaseCost(base_price, price_growth_rate, number_owned))
