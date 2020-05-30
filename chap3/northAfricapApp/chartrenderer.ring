# Reminder: our aDatagraph contains:
# [ 0, 0, 0, 0, 0, 1 ],
# [ 0, 0, 0, 0, 0, 1 ],
# [ 0, 0, 0, 0, 0, 1 ],
# [ 0, 0, 0, 0, 0, 1 ],
# [ 0, 0, 0, 0, 0, 1 ],
# [ 0, 0, 1, 0, 0, 1 ],
# [ 0, 1, 1, 0, 0, 1 ],
# [ 0, 1, 1, 0, 0, 1 ],
# [ 0, 1, 1, 1, 0, 1 ],
# [ 1, 1, 1, 1, 1, 1 ]

load "transformer.ring"
load "datagraph.ring"

func showgraph()
	cGraph = ""
	
	// Constituting the graph string cGraph
	for y = 1 to len(aDatagraph) // =10
		cGraph += spc(1) + graphline(y) + NL
	next y 
	
	cGraph += graphlabels()
	
	// Showing the graph on the screen
	? cGraph

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
