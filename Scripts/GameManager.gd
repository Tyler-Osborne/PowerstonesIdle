extends Node
# Holds commonly used functions to be accessed globally

# Don't know what I wanna do with this yet
func _ready():
	pass

# Returns cost of single purchase
func SinglePurchaseCost(initial_cost, base_cost, current_owned):
	return initial_cost * pow(base_cost, current_owned + 1)

# Returns cost of purchasing a certain amount of stones
# Remember to always pass SinglePurchaseCost() as first param
func BulkPurchaseCost(cost_of_one, base_cost, amount_to_purchase):
	if (amount_to_purchase == 1):
		return cost_of_one
	else:
		return amount_to_purchase * ((pow(base_cost, amount_to_purchase) - 1) / (base_cost - 1))

# Returns cost of buying max amount of stones that can be bought with current power
# Again, always pass SinglePurchaseCost() as first param
func MaxNumberToPurchase(cost_of_one, current_power, base_cost):
	if (cost_of_one > current_power):
		return 0
	else:
		return int(log(1 + ((base_cost - 1) * current_power / cost_of_one)) / log(base_cost))
