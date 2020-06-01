load "guilib.ring"
o1 = new ucdString("أبراس")
? o1.text

Class ucdString 
	text	// the attribute we will use to read the content
	oQString = new QString() // Qt string object is created
	def init(pStr) // pStr contains text we pass to Qt
		oQString.append(pStr) // Qt creates unicode text
		text = pStr // We initiate the attribute text
