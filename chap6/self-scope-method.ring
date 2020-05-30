p = new person
? p.info()

class person
	name = "Mansour"

	def info
		j = new job {		# Braces are used inside a
			? self.name	# class method not a class
		}			# region. Therefore, self
					# references the j object,
					# hence the value "programmer"
		age = 43
		? age

class job
	name = "programmer"
