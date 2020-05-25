me = "Mansour"
you = "Friend"

show()	 # p Object is created "locally" in the function
? p.name # let's access the object from the global scope!

func show
	? me
	? you
	them = "Others"
	? them + NL

	p = new person	# p Object is created inside the
			# function local scope
class person
	name
	age


