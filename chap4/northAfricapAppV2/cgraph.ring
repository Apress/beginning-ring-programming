
cGraph = ""
	
// Constituting the graph string cGraph
for y = 1 to len(aDatagraph) // =10
	cGraph += spc(1) + graphline(y) + NL
next y 
	
cGraph += graphlabels()
	

