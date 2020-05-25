//*** Please note the text in the book between parentheses
// just before this listing containing (in the same self-scope2.ring file)
// should be corrected to (in the same self-scope-method.ring file)
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
