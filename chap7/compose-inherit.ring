//*** Please note that this file is the same as 'object-way3.ring'
//*** In the book we should keep only the current file 'compose-inherit.ring'
//*** and avoid 'object-way3.ring' (unfortunately this is impossible now
//*** since the book is under print). I'm so sorry for that.

// A team is created
oTeam1 = new Team {
	oEmployee  = new Employee { name = "Bachir" }
	oCustomer1 = new Customer { name = "Ali" }
	oCustomer2 = new Customer { name = "Ahlem" }
}
// Displaying the team
? oTeam1.oEmployee.name
? oTeam1.oCustomer1.name
? oTeam1.oCustomer2.name

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

// Composing a team of employees
Class Team
	oEmployee
	oCustomer1
	oCustomer2
