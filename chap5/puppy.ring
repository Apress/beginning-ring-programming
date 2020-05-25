// Bye a puppy
iHaveMoney = TRUE
onSale = TRUE
iLikeIt = FALSE
aPuppies = [ "Beagle" , "Terrier" , "Pug" , "Maltese" ]
aMyPref = [ "Poms" , "Beagle" , "Pug" , "Shih Tzu" ]

if iHaveMoney and
    onSale
	cPuppy = getAPuppyFrom(aPuppies)
	iLikeIt = doILikeThis(cPuppy)
	if iLikeIt
		buy(cPuppy)
	ELSE
		? "I won't buy a " + cPuppy + " !"
		? "Because I don't like it."		
       	ok
ELSE
        ? "I can't buy a puppy."
        ? "Either I don't have money, or,"
        ? "it's not on sale"
OK

// FUNCTIONS
func getAPuppyFrom( a )
              n = random( len(a) ) + 1
              if n > len(a) { n = len(a) }
              c = a[n]
              return c
func doILikeThis( c )
              if find( aMyPref , c ) != 0
                            bFound = TRUE
              else
                            bFound = FALSE
              ok
              return bFound
func buy( p )
              ? "I bought a wonderful " + p + " :)"
