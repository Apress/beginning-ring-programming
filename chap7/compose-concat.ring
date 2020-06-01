// Storing the list of attributes in Person
o1 = new Person
a = attributes( o1 ) # Gives [ :name, :age ]

// Creating the Employee by concatenation
o2 = new Employee
{
 		addAttributes(a)   # Person attributes are added
 		? attributes(self) # To verify the final result
}

// The two Classes to be concatenated
class Person
	name
	age

class Employee
	salary
	em_date

	def addAttributes(a)		# The object adds new
		addAttribute(self,a)  # attributes to itself
