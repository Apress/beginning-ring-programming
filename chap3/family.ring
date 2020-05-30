// Computing the average age of my family
	aAges = [ :Haneen=5, :Teeba=8, :Cherihen=36, :Mansour=43 ]
	nAverage = 0
	nSum = 0

// Iterating over the data in aAges list
	for aPerson in aAges
	   nSum += aPerson[2]     # Accumulating data items
	next
// Calculating the average and displaying the result
	nAverage = nSum / len(aAges)
	? nAverage    # Gives 23
