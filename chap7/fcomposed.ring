word = "humanized"
// Testing every function alone
	? first(word,5) 		# => Human
	? last(word,3) 		# => zed
	? part(word,3,5) 	# => man
	? CAPITALIZE(word) 	# => HUMANIZED

// Now let's make a thinking by comoposing these functions

	// Give me the first letter of the last 3 letters
		? first( last(word,3) , 1) 		# => z
	// Give me the 2 to 4 part of the last 5 letters
		? part( last(word,5) , 2, 4) 	# => ize
	// Give me the enitre word but with MAN capitalized
		? first(word,2) +
		  CAPITALIZE( part(word,3,5) ) + 	
		  last(word,4)
		# => huMANized

//*** Our functions ***

	func first(pStr,n)
		n1 = 1
		n2 = n
		return substr(pStr,n1,n2)

	func last(pStr,n)
		n1 = len(pStr) - n + 1
		n2 = n
		return substr(pStr,n1,n )

	func part(pStr, n1,n2)
		return substr( pStr,n1, n2-n1+1 )

	func CAPITALIZE(pStr)
		return UPPER(pStr)
