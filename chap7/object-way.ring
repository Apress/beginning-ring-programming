

// Defining the mother class
class Person
	name job age hobby
	def info()
 		? "Name : " + name
 		? "Job : " + job
 		? "Age : " + age
 		? "Hobby : " + hobby


// Defining the doughter class
class Customer from Person
		customerID bankAccount
		def info()
			? "Customer ID : " + customerID
			? "Bank account : " + bankAccount

// Defining a second doughter class
class Employee from Person
 	salary emp_date
 	def info()
 		? "Salary : " + salary
 		? "Employement date : " + emp_date
