o1 = new Person
o1.name = "Saadetto"	# Setting name attribute
			# => the setName() method is fired!

Class Person
	name

	def setName(value)
		if UPPER(value) != upper("SELMEN")
			? "Hi, " + value + "!"
			? "I was looking for Selmen, where is he?!"
		else
			? "Hello, Selmen."
		ok
