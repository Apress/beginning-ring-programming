// Computing the average age of my family
aAges = [ :Haneen = 5, :Teeba = 8, :Cherihen = 36, :Mansour = 43]
nAverage = 0
nSum = 0
for aPerson in aAges
	nSum += aPerson[2]
next
nAverage = nSum / len(aAges)
? nAverage
