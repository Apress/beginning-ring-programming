 // Declaring the main list
 aPerson =
 [
	:name = "Patrick",
	:job = "CEO",
	:age = 54,
	:address = "20, Peace Avenue. Toronto.",
	:info = func {	
		? "Name   : " + aPerson[:name]
		? "Job	  : " + aPerson[:job]
		? "Age	  : " + aPerson[:age]
		? "Adress : " + aPerson[:address]
		// Those These are new lines added
		? ""
		? "Customer ID	: " + aPerson[6][:customerID]
		? "Bank account	: " + aPerson[6][:bankAccount]
 	}
 ]

 // Declaring the banking list
 aCustomer =
 [
	:customerID = "C12500",
	:bankAccount = "XA12500"
 ]

 // Adding the two lists
 aPerson + aCustomer

 // Calling the autonomous function defined in aPerson[]
 f = aPerson[:info]
	call f()
