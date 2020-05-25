func main
	o1 = New Guffa {
		// The following objects are accessed by reference
		Thing { name = "couscous" price = 2500 }
		Thing { name = "tomatoes" price = 1500 }
		Thing { name = "onion" price = 1200 }
		Thing { name = "salt" price = 300 }

		show()
	}

class Guffa
	aList = []
	thing

	def getThing
			
	//def Thing
		aList + new Thing
		return aList[len(aList)] # returned by reference

	def show
		for i=1 to len(aList) ? aList[i] next

class Thing name price
