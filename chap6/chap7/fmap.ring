aWords = [ "Ring", "Ruby", "Python" ]
f = func w { return len(w) }  	# Our lambda
aLen = map( aWords, f)     	# Iterate over the word list and
                            	# apply f() to every word
? aLen
func map( paList, pf )      	# p => reminds us they're parameters
           aResult = []
           for i = 1 to len(paList)
                n = call pf( paList[i] )
                aResult + n
           next i
           return aResult
