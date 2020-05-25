 // A customer is created
 new customer {
		name = "Patrick"
		job = "CEO"
		age = 54

		customerID = "C12500"
		bankAccount = "XA12500"

		super.info() # super points to mother class Person
		? ""
		info()
 }

 // Defining the mother class
 class Person
		name job age
		def info()
			? "Name : " + name
			? "Job : " + job
			? "Age : " + age

 // Defining the doughter class
 class Customer from Person
		customerID bankAccount
		def info()
			? "Customer ID : " + customerID
			? "Bank account : " + bankAccount
