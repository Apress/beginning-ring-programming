p = new person	# An object scope is activated for p
? p.info()	# The info() method is invoked

class person
	name = "Mansour"	# The class region is run
	j = new job {		# before the info() method is
		? self.name	# executed. Self references
	}			# p and not j object!

	def info
		age = 43
		? age

class job
	name = "programmer"
