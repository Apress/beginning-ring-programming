// Modeling the screen world
aPoint1 = [ :x = 20, :y = 30 ]
aPoint2 = [ :x = 10, :y = 50 ]
aWin = [ aPoint1 , aPoint2 ]
? "Screen world created.
Ready." + nl

? "Showing all points :"
? aWin

? "Point 1 only :"
? aPoint1[:x]
? aPoint1[:y]

? "Point 2 only :"
? aPoint2[:x]
? aPoint2[:y] + nl

? "X coordiantes only:"
? aPoint1[:x]
? aPoint2[:x] + nl

? "Y coordinates only:"
? aPoint2[:y]
? aPoint2[:y] + nl

? "Changing all x cordinates:"
aPoint1[:x] = 999
aPoint2[:x] = 999
? "Done" + nl

? "Show them after they changed:"
? aPoint1[:x]
? aPoint2[:x]

