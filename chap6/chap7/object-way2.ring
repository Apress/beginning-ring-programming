// An employee is created
new Employee {
 	name = "Zoubeir"
 	job = "Banker"
 	age = 28
 	hobby = "Swimming"

 	salary = "64K"
 	emp_date = "2014/10/10"

 	super.info()
 	? ""
 	info()
}

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
