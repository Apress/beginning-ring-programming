p = new person
? p.info()

class person
	name = "Mansour"

	def info
		j = new job {		
			? this.name	# this, instead of self
		}			

		age = 43
		? age

class job
	name = "programmer"
