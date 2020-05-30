// Some numbers
	n1 = 12
	n2 = 2.08
	n3 = 12/8
	n4 = -5201300
	n5 = 0

// Some operations on numbers
	? n1 + 8 // Gives 20
	? n2 * 3 // Gives 6.24
	if n1 > n2 { ? "It's bigger" } 	 // Gives "It's bigger"
	if n5 = FALSE { ? "It's FALSE" } // Gives "It's FALSE"
					 // because n5 = 0
// Some strings
	c1 = "Cairo" 			// simple text
	c2 = "is the capital of Egypt" 	// 2 lines string
	c3 = "12/05/2019" 		// A date inside the string
	c4 = "10:24AM" 			// A time inside the string
	c5 = "" 			// This is an empty string

? ""
// Some operations on strings
	? c1 + " " + c2 	// Gives "Cairo is the capital of Egypt"
	? addDays(c3,1) 	// Gives "13/05/2019"
	if isNull(c5) = true { 	// Returns TRUE because c5 = ""
		SEE "Oh, this is empty!" + NL
}

? ""
// Creating a new data object of type Person
	o1 = new Person { name="Foumakoye" country="Niger" }?
	o1.whois() // Gives "Foumakoye Niger"

// Accessing and changing object attributes
	? o1.name 	// Dot operator: gives "Foumakoye"
	o1 { name="Saadetto" } // Braces: modifies name attributes
	? o1.name	// Name changes to "Saadetto"

// Some lists
	a1 = [1,2,3] // could be written a1 = 1:3
	a2 = ["A","B","C"] // could be written a2 = "A":"B"
	a3 = [1,"B",o1] // list of mixed types
	a4 = [0, [1,2,3], 4] // nested list (list in list)
	a5 = [ :name = "Foumakoye", :country = "Niger" ] // indexed list (hashmap)

? ""
// Some operations on lists
	a1 + 4 // Gives [1,2,3,4]
	? a1 + a2 // Gives [1,2,3,4,["A","B","C"]] => 5 items
	// ***** Please note that the following line in the book is not correct. Here I corrected it. I'm sorry for that.
	? Len(a1) // Gives 5 with ["A","B","C"] as 5th item
	? a5 // Gives:
	     // name
	     // Foumakoye
	     // country
	     // Niger

// Definining the data object
	class Person
		name country // The object attributes
		def whois() // You can use def or func6
		return name + " " + country
