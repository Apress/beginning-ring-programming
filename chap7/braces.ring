// A new screen is composed declaratively

new Screen {	# This opening brace fires the braceStart() 
 		# method in the Screen class

		addPoint() {	
			X = 10
			Y = 10
			Z = 10
		}
		? aPoints[ len(aPoints) ]	# => Shows the Point
							#	just added

		anything anytime		# Invokes getAnything() and
						# getAnytime() methods in the
 						# Screen class

}	# This closing braces fires the braceEnd() method in
 	# the Screen class

Class Screen
		aPoints = []
		anything
		anytime

		def braceStart()
			? "Hello!" + NL

		def addPoint()
			aPoints + new Point
			return aPoints[ len(aPoints) ]

		def getAnything()
			? "Anything!" + NL

		def getAnytime()
			? "Anytime!" + NL

		def braceEnd()
			? "Bye!"

class Point
		X Y Z
