// Generating the Datagraph of Population variable
aDatagraph = []

aPOP = []

// Calculating the maximum value of Population, ymax
ymax = aData[2][2] // setting default value at the 1st one
for y=2 to 7 // 7 is len(aData), line 1 is excluded because 55		  // it corresponds to names of countries
	if aData[y][2] > ymax
		ymax = aData[y][2]
	end
next y

// Definining number of cells containing "1"s in every bar
for y=2 to 7
	nPop = aData[y][2]
	yi = ceil( (nPop/ymax) * 10)
	aPOP + [ aData[y][1], yi ]
next y

// Generating the datagraph of the population variable
aDatagraph = []
for i=1 to 10
	aDatagraph + [ "0", "0", "0", "0", "0", "0" ]
next i

// Next we inject the "1"s of aPOP in the aDatagraph matrix
for x=1 to 6 // Number of countries
	n = 10 - (aPOP[x][2]) + 1
	for y = n to 10
		aDatagraph[y][x] = "1"
	next y
next x

// Functions (Take your time to study them by yourself)
	func graphline( n )
		aLine = aDatagraph[n]
		cLine = ""
		for i=1 to len(aLine) // =6
			if aLine[i] = 0
				cline += "."
			but aLine[i] = 1
				cLine += "I"
			ok
			cLine += spc(3)
		next i
		return trim(cLine)

	func graphlabels()
		cLabels = ""
		aLabels = countries()
		for i=1 to len(aLabels)
			cLabels += aLabels[i] + spc(1)
		next i
		return trim(cLabels)

	func spc(n)
		str = ""
		for i=1 to n
			str += " "
		next i
		return str
