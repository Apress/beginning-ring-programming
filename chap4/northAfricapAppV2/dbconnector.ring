load "stdlib.ring"
// Connecting to SQLite database
load "sqlitelib.ring"

oSQLite = sqlite_init()
sqlite_open( oSQLite, "northafrica.db" )

// Returning the dataset in the aResult[] list
sql = "SELECT * FROM COUNTRY"
aResult = sqlite_execute( oSQLite, sql )

// Adapting the aResult list to the target format
// compatible with the transformer

# 1. Retrieving the list of columns
a1 = columns(aResult)

# 2. Setting the a[] list and generating its first line
a = []
a + stringuify(a1)
a2 = lines(aResult)

# 3. Generating the remaining values 
for i=1 to len(a2)
		str = stringuify(a2[i])
		a + str
next i

# -> a[] is now ready to be consumed by the transformer
# test it by writing: ? a

// Functions

	# This function transforms a list of strings into
	# a string enclosed inside two commas
	func stringuify(a)
		str = ""
		// Adding "" to every string
		for s in a
			s = '"' + s + '"'
		next s
		// Adding ","
		for i=1 to len(a)-1
			if i<len(a)
				str += a[i] + ", "
			ok
		next i
		str += a[i]
		return str

# This function retrieves the names of variables
# in a string with every variable enclosed inside
# two commas : (1) in the figure 3.33
func columns(a)
		aTemp = []
		for i=1 to len(a[1])
			aTemp + a[1][i][1]
		next i
		return aTemp

# This function makes the same job as Columns() but
# with all the values of the dataset : (2) in the figure
func lines(a)
		aLines = []
		aTemp = []
		for i=1 to len(a)
			for v=1 to len(a[v])
				aTemp + a[i][v][2]
			next v
			aLines + aTemp
			aTemp = []
		next i
		return aLines
