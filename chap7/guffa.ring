// THE DECLARATIVE LAYER OF THE PROGRAM
new Guffa {
	budget = 10000
	new listOfThings {
		new aThing { name = "couscous" price = 2500 ? name }
		new aThing { name = "tomatoes" price = 1500 ? name }
		new aThing { name = "onion" price = 1200 ? name }
		new aThing { name = "salt" price = 300 ? name }
		getTotalPrice() 
	}
	canBye() # TRUE or FALSE depending on budget > totalPrice
	buy()    # depending on the value of canBye
	show()   # Shows the content of the Guffa
}

// THE IMPLEMENTATION LAYER OF THE PROGRAM
class Guffa
	oThings = new listOfThings
	def canBye()
	def buy()
	def show()

class listOfThings
	new aThing
	def getTotalPrice()

class aThing name price
