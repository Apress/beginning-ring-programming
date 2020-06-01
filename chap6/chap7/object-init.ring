load "guilib.ring"	// Importing the RingQt extension

// Creating the o1 object while initializing it
o1 = new ucdString("أبراس")

// Displaying the text atribute
? o1.text

class ucdString
	text
	oQString = new QString()

	// Object initialization method
	def init(pStr)	# pStr contains text we put line 4
		oQString.append(pStr)	# Qt creates unicode text
		text = pStr	# text attribute is initiated
		
