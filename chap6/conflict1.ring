age = 21		# defines name as a global variable
p = new person		# creates p object from person class
? p			# prints the infos of the object

class person
	name		# defines a name attribute for person	
	age		# conflictual: what Ring will do?

	def info
		? name
		? age
