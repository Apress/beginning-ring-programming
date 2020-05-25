// Creating a book object
new book {
 	 title = "Beginning Ring"
 	 publisher = "Apress"
	author = "Mansour Ayouni"
 	 		
	? info()
	? thanks()
 }	

// Defining a book class
class Book
 	// Attributes
 	title
	publisher
	author
 	nb_sold

 	// Methods
	func info()
		info  = "Title		: " + title + nl
		info += "Publisher	: " + publisher + nl
		info += "Author		: " + author + nl
			
		return info

		func thanks()
			return "Thank you dear reader!"
