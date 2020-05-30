o1 = new Person
o1.name = "Mahran"	# Let's affect a value to the name attribute
cString = o1.name 	# Getting the default value of name 
 				# attribute, "Mahran".
/*
Note that there is no printing happening here in the main region of the program. What you will see in scree, will be printed inside the getName() method of th Person class.
*/
? type(cString)
? len(cString)

Class Person
 	name

 	def getName
 	 	? name + " is now being assigned"

