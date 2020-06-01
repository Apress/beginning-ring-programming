// Creating a screen containing 2 points
func main
	win = new screen { # Inside the screen object scope
		// Adding a first point
		scrnContent[ addPoint() ] {	# point is added
			# Inside the point object scope
			x = 10	
			y = 30
		}
		// Adding a second point
		scrnContent[ addPoint() ] {
			x = 100
			y = 180
		}
		// Show the points
		show()
	}

// Defining a screen class
class Screen
	scrnContent = [] // container of points in the screen

	func addPoint
		scrnContent + new point // A new point added
		return len(scrnContent) // Index of last point added

	func show()
		?"Screen content:"
		For ptXY in scrnContent
			See ptXY
		next

// Defining a point class
Class Point
	X = 10
	Y = 30
