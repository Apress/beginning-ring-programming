 // A person is created
 oPerson1 = new Person {
	name = "Mansour"
	birth_date = "01/08/1976"
	age()	# This method will calculate the age
		# but by delegating it to a specialized
		# external object (see age() method below)
 }

 // Printing the person object
 ? oPerson1


 // Defining the Person class
 class Person
	name
	birth_date
	age

	def age()
 		// Delegation happens here
 		o1 = new DateCalculator(birth_date)
 		age = o1.age()

 // Defining the DateCalculator class
 Class DateCalculator
 	date
 	age

 
	def init(d)
 		date = d

 	def age()
 		n = floor( diffDays(date(),date) / 365 )
 		this.age = n
 		return age
