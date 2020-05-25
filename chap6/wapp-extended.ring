### PROVIDING A LIST TO SERVE
### AS A CONTAINER FOR THE APP
aTree = []
/* This list will be used in two places:
 	 	1. the add() method in every class uses
 	   	   it to add an objet to the App world
 	 	2. the show() function uses it to display
 		   The treeview of the App on the screen
*/ 

### APP DESCRIPTION
// Using braces and object scopes to
// describe the hierarchy of the App
App = new app {
 	// The App includes only one window
 		Win = new win {
 			// first zone in the window
 			z1 = new Zone {
 				name = "Tiba"
 				// Graphic widgets go here
 					w1 = new Widget {
 						type = "كراس"
 					}
 					w2 = new Widget {
 					type = "لعبة"
 				}
 			}
 			// Second zone in the window
 			z2 = new Zone {
 				name = "Hanine"
 				// Graphic widgets go here
 				w3 = new Widget { type = "رسم" }
				w4 = new Widget { type = "شكلاطة" }
 			}
 		}
 	}

### DYNAMIC CONSTRUCTION AND DISPLAY
### OF THE PROGRAM OBJECTS
// The list of objects created by the
// code above is dynamically constructed
aObj = globals()

// Then, the tree of the App is displayed
show()

### THE DISPLAY FUNCTION
func show()
 	// Dynamically constructing the Ring code
 	// that calles the show() method on every object
 		for i=3 to len( aObj ) - 1
 			eval(aObj[i]+".add()") 
 		next
 		/* For the code written in the APP DESCRIPTION  
     		   section above, this function generates the
 		   following Ring code:
 			=> App.add()
 			   Win.add()
 			   z1.add()
 			   w1.add()
 			   w2.add()
 			   z2.add()
 			   w3.add() 
 		*/

 		// The aTree is then constructed (see the code
 		// of add() method in every class here after
 		// All what remains is to display it
 		? aTree

###### THE APP WORLD CLASSES #######
 	class App
 		name
 		def add()
 			aTree + "_ App"

 	class Win
 		wintype # can be "modal" or "non-modal"
 		def add()
 			aTree + " |_ Win"

 	class Zone
 		# will serve as a container
		name
		def add()
			aTree + ( 	" | |" + NL +
 			     	" | |_ " + name )
 	class Widget
 		name
 		type # can be "label", "edit", or "button"
 		def add()
 			cStr = " | | |_ Widget(" + type + ")"
 			aTree + cStr
