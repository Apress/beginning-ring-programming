// Reminder: Just to have the dataset under our eyies:
# aData =
# [
# 		[ :CNTRY,  :POP, :GRO,  :MED,  :DEN ],
# 		[   :MAU,  4.42, 2.73, 19.70,  4.29 ],
# 		[   :MOR, 35.70, 1.30, 27.90, 80.10 ],
# 		[   :ALG, 41.30, 1.74, 27.50, 17.30 ],
# 		[   :TUN, 11.50, 1.12, 31.10, 74.20 ],
# 		[   :LIB,  6.37, 1.28, 27.20,  3.62 ],
# 		[   :EGY, 97.60, 1.93, 24.70, 98.00 ]
# ]

// Generating the Datagraph of Population variable
# Will be generated in the following list of lists:
aDatagraph = []
# Final result should be:
# aDatagraph = [
# 		[ 0, 0, 0, 0, 0, 1 ],
# 		[ 0, 0, 0, 0, 0, 1 ],
# 		[ 0, 0, 0, 0, 0, 1 ],
# 		[ 0, 0, 0, 0, 0, 1 ],
# 		[ 0, 0, 0, 0, 0, 1 ],
# 		[ 0, 0, 1, 0, 0, 1 ],
# 		[ 0, 1, 1, 0, 0, 1 ],
# 		[ 0, 1, 1, 0, 0, 1 ],
# 		[ 0, 1, 1, 1, 0, 1 ],
# 		[ 1, 1, 1, 1, 1, 1 ]
# ]

# The number of "1"s (cells containing 1 in the matrix) for 
# each country (record) is defined by this formula:
# 	y(i)= upper( POP(i)/POP(max) *10 )
# 		-> upper is the ceil() function in Ring
# 		Example: y(ALG) = ceil((41.3 / 97.6) * 10) = 5
# 	Result must be contained in this indexed list:
aPOP = []
# aPOP Shoud be:
# 	[:MAU=1, :MOR=4, :ALG=5, :TUN=2, :LIB=1, :EGY=10]
# 	And you read it like this:
# 	Given that a single vertical bar is formed of 10 cells
#	 The vertical bar of MAU -> 1 cell containing "1" each
#	 ""     ""    ""  of MOR -> 4 cells    ""        "" 
#	 ""     ""    ""  of ALG -> 5 cells    ""        ""
#	 ""     ""    ""  of TUN -> 2 cells    ""        "" 
#	 ""     ""    ""  of LIB -> 1 cell     ""        "" 
#	 ""     ""    ""  of EGY -> 10 cells   ""        "" 
#	 All the others are containing "0"s.

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
#->Gives aPOP=[:MAU=1,:MOR=4,:ALG=5,:TUN=2,:LIB=1,:EGY=10]

// Generating the datagraph of the population variable
# Remember: aPOP tells us about the "1"s in the matrix
# What we need to do, is to inject these "1"s in an empty
# matrix (full of "0"s)
# Let's start with an empty matrix
aDatagraph = []
for i=1 to 10
	aDatagraph + [ "0", "0", "0", "0", "0", "0" ]
next i
# Now we have aDatagraph containing:
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ],
# 	[ 0, 0, 0, 0, 0, 0 ]

// Next we inject the "1"s of aPOP in the aDatagraph matrix
# Remember aPOP=[:MAU=1,:MOR=4,:ALG=5,:TUN=2,:LIB=1,:EGY=10]
for x=1 to 6 // Number of countries
	n = 10 - (aPOP[x][2]) + 1
	for y = n to 10
		aDatagraph[y][x] = "1"
	next y
next x

# Now we have our final aDatagraph containing:
# 	[ 0, 0, 0, 0, 0, 1 ],
# 	[ 0, 0, 0, 0, 0, 1 ],
# 	[ 0, 0, 0, 0, 0, 1 ],
# 	[ 0, 0, 0, 0, 0, 1 ],
# 	[ 0, 0, 0, 0, 0, 1 ],
# 	[ 0, 0, 1, 0, 0, 1 ],
# 	[ 0, 1, 1, 0, 0, 1 ],
# 	[ 0, 1, 1, 0, 0, 1 ],
# 	[ 0, 1, 1, 1, 0, 1 ],
# 	[ 1, 1, 1, 1, 1, 1 ]

/*
// To test it you show every horizontal line and see
// if you are right:
? aDatagraph[5]
# 	should give a list of "0"s except the
# 	last cell witch is "1", while
? aDatagraph[10]
# 	should give a list of 10 "1"s
*/
