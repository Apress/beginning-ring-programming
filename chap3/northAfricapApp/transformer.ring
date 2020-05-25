load "dbconnector.ring"
// Transformation - step 1: adding [ and ]
for i = 1 to len(a) //= 7; number of lines in the text file
a[i] = "["+a[i]+"]"
next i

// Transformation - step 2: hosting the data in a list
cData = "aData = [ " + NL
for i = 1 to len(a) // =7
	cData += TAB + a[i]
	if i < len(a) { cData += ", " + NL }
next i
cData += NL + " ]"

// Dynamic creation of aData list
cCode = ""
cCode += "// Data transformed in Ring lists" + NL
cCode += cData
// Show the code
//? cCode
eval(cCode)

/*
// Data is now ready to be managed as a Ring list. Examples:
? NL + "// Example 1: reading the list of variables"
? variables()

? "// Example 2: reading the data of Marocco (? aData[3])"
? aData[3]

? "// Example 3: reading the list of countries"
? countries()
*/

func variables()
	return aData[1]

func values()
	aVal = []
	for i=2 to len aData
		aVal + aData[i]
	next i
	return aVal

func countries()
	aCtr = []
	for i=2 to len(aData)
		aCtr + aData[i][1]
	next i
	return aCtr
