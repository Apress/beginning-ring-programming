// Constructing a list of Employee objects
a = [
	new Employee { name = "Ahlem" salary = 38000 },
	new Employee { name = "Zohra" salary = 28000 },
	new Employee { name = "Hajfa" salary = 26000 },
	new Employee { name = "Yemna" salary = 48000 },
	new Employee { name = "Najet" salary = 58000 },
	new Employee { name = "Saliha" salary = 42000 }
]

// Creating an object containing a collection of employees 
_oEmployees = new Employees(a)

// Managing the collection of objects
_oEmployees
{
	? "Listing the object collection:"
	? getList()

	? "Sorting the collection by name:"
	? sortBy(:name)

	? "Sorting the collection by salary:"
	? sortBy(:salary)

	? "Searching for the range of name 'Saliha':"
	? searchFor('Saliha',:name)

	? "Searching for the salary 28000:"
	? searchFor(28000,:salary)
}

// Defining the Employee class
class Employee
	name
	salary

// Defining the Employees class (=> collection of objects)
class Employees

// This attribute will contain the collection of objects
 	aList = []

	// This method recives a list of objects and adds them as
	// an attribute (in the collection of objects aList[])
	def init(paList)
		aList = paList

	// This method returns the collection of objects
	def getList()
		return aList

	// This method sorts the collection by attribute
	def sortBy(pAttribute)
		return sort(aList,1,pAttribute)

	// This method searchs for the value of an attribute
	def searchFor(cValue,pAttribute)
		return find(aList,cValue,1,pAttribute)
