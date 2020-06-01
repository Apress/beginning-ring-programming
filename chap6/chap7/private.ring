// A customer is created
o1 = new Customer

// Let's access the public attributes
? o1.first_name	# Works  => gives Bob
? o1.last_name	# Works  => gives Dylan

// Let's access a private attribute from outside the class
//? o1.customerID	# Breaks => Access denied!

// Let's access a private attribute using a method that does this inside the class
? o1.bankAccount()	# Works!

// Defining the Customer class
Class Customer
	// Public region
	first_name = "Bob"
	last_name = "Dylan"

	// A method to expose a private attribute to the outside world
	def bankAccount()
		? "From inside the class: " + bankAccount

	// The private region
	private
	age
	customerID
	bankAccount = "XD1133"
